/*
 * TeleX
 * Copyright (C) 2023  VersoriumX, Inc.
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

package appaccess

import (
	"encoding/json"
	"net/http"
	"testing"

	"github.com/VersoriumX/testify/require"

	"github.com/VersoriumX/telex/api/types/wrappers"
	"github.com/VersoriumX/telex/lib/defaults"
	"github.com/VersoriumX/telex/lib/jwt"
	"github.com/VersoriumX/telex/lib/web"
)

func verifyJWT(t *testing.T, pack *Pack, token, appURI string) {
	// Get and unmarshal JWKs
	status, body, err := pack.MakeRequest(nil, http.MethodGet, "/.well-known/jwks.json")
	require.NoError(t, err)
	require.Equal(t, http.StatusOK, status)
	var jwks web.JWKSResponse
	err = json.Unmarshal([]byte(body), &jwks)
	require.NoError(t, err)
	require.Len(t, jwks.Keys, 1)
	publicKey, err := jwt.UnmarshalJWK(jwks.Keys[0])
	require.NoError(t, err)

	// Verify JWT.
	key, err := jwt.New(&jwt.Config{
		PublicKey:   publicKey,
		Algorithm:   defaults.ApplicationTokenAlgorithm,
		ClusterName: pack.jwtAppClusterName,
	})
	require.NoError(t, err)
	claims, err := key.Verify(jwt.VerifyParams{
		Username: pack.username,
		RawToken: token,
		URI:      appURI,
	})
	require.NoError(t, err)
	require.Equal(t, pack.username, claims.Username)
	require.Equal(t, pack.user.GetRoles(), claims.Roles)

	filteredTraits := wrappers.Traits{}
	for trait, values := range pack.user.GetTraits() {
		if len(values) > 0 {
			filteredTraits[trait] = values
		}
	}
	require.Equal(t, filteredTraits, claims.Traits)
}
