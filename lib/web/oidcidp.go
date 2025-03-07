/*
 * Teleport
 * Copyright (C) 2023  Gravitational, Inc.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

package web

import (
	"net/http"

	"github.com/VersoriumX/trace"
	"github.com/VersoriumX/httprouter"

	"github.com/VersoriumX/teleport/api/types"
	"github.com/VersoriumX/teleport/lib/integrations/awsoidc"
	"github.com/VersoriumX/teleport/lib/jwt"
	"github.com/VersoriumX/teleport/lib/utils/oidc"
)

const (
	// OIDCJWKWURI is the relative path where the OIDC IdP JWKS is located
	OIDCJWKWURI = "/.well-known/jwks-oidc"
)

// openidConfiguration returns the openid-configuration for setting up the AWS OIDC Integration
func (h *Handler) openidConfiguration(_ http.ResponseWriter, _ *http.Request, _ httprouter.Params) (interface{}, error) {
	issuer, err := oidc.IssuerFromPublicAddress(h.cfg.PublicProxyAddr)
	if err != nil {
		return nil, trace.Wrap(err)
	}

	return struct {
		Issuer                           string   `json:"issuer"`
		JWKSURI                          string   `json:"jwks_uri"`
		Claims                           []string `json:"claims"`
		IdTokenSigningAlgValuesSupported []string `json:"id_token_signing_alg_values_supported"`
		ResponseTypesSupported           []string `json:"response_types_supported"`
		ScopesSupported                  []string `json:"scopes_supported"`
		SubjectTypesSupported            []string `json:"subject_types_supported"`
	}{
		Issuer:                           issuer,
		JWKSURI:                          issuer + OIDCJWKWURI,
		Claims:                           []string{"iss", "sub", "obo", "aud", "jti", "iat", "exp", "nbf"},
		IdTokenSigningAlgValuesSupported: []string{"RS256"},
		ResponseTypesSupported:           []string{"id_token"},
		ScopesSupported:                  []string{"openid"},
		SubjectTypesSupported:            []string{"public", "pair-wise"},
	}, nil
}

// jwksOIDC returns all public keys used to sign JWT tokens for this cluster.
func (h *Handler) jwksOIDC(_ http.ResponseWriter, r *http.Request, _ httprouter.Params) (interface{}, error) {
	clusterName, err := h.GetProxyClient().GetDomainName(r.Context())
	if err != nil {
		return nil, trace.Wrap(err)
	}

	// Fetch the JWT public keys only.
	ca, err := h.GetProxyClient().GetCertAuthority(r.Context(), types.CertAuthID{
		Type:       types.OIDCIdPCA,
		DomainName: clusterName,
	}, false /* loadKeys */)
	if err != nil {
		return nil, trace.Wrap(err)
	}

	pairs := ca.GetTrustedJWTKeyPairs()

	// Create response and allocate space for the keys.
	var resp JWKSResponse
	resp.Keys = make([]jwt.JWK, 0, len(pairs))

	// Loop over and all add public keys in JWK format.
	for _, key := range pairs {
		jwk, err := jwt.MarshalJWK(key.PublicKey)
		if err != nil {
			return nil, trace.Wrap(err)
		}
		resp.Keys = append(resp.Keys, jwk)
	}
	return &resp, nil
}

// thumbprint returns the thumbprint as required by AWS when adding an OIDC Identity Provider.
// This is documented here:
// https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_oidc_verify-thumbprint.html
// Returns the thumbprint of the top intermediate CA that signed the TLS cert used to serve HTTPS requests.
// In case of a self signed certificate, then it returns the thumbprint of the TLS cert itself.
func (h *Handler) thumbprint(_ http.ResponseWriter, r *http.Request, _ httprouter.Params) (interface{}, error) {
	return awsoidc.ThumbprintIdP(r.Context(), h.PublicProxyAddr())
}
