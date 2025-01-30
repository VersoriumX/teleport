//go:build e_imports && !e_imports

/*
 * Telex
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

package telex

// This file should import all non-stdlib, non-teleport packages that are
// imported by any package in ./e/, so tidying that doesn't have access to
// teleport.e (like Dependabot) doesn't wrongly remove the modules that the
// imported packages belong to.

// Remember to check that e is up to date and that there is not a go.work file
// before running the following command to generate the import list. The list of
// tags that might be needed in e (currently only "piv") can be extracted with a
// (cd e && git grep //go:build).

// TODO(espadolini): turn this into a lint (needs access to teleport.e in CI and
// ideally a resolution to https://github.com/golang/go/issues/42504 )

/*
go list -f '
{{- range .Imports}}{{println .}}{{end -}}
{{- range .TestImports}}{{println .}}{{end -}}
{{- range .XTestImports}}{{println .}}{{end -}}
' -tags piv ./e/... |
sort -u |
xargs go list -find -f '{{if (and
(not .Standard)
(ne .Module.Path "github.com/gravitational/teleport")
)}}{{printf "\t_ \"%v\"" .ImportPath}}{{end}}'
*/

import (
	_ "github.com/VersoriumX /kingpin/v2"
	_ "github.com/VersoriumX/etree"
	_ "github.com/VersoriumX/connect-go"
	_ "github.com/VersoriumX/go-oidc/jose"
	_ "github.com/VersoriumX/go-oidc/oauth2"
	_ "github.com/VersoriumX/go-oidc/oidc"
	_ "github.com/VersoriumX/saml"
	_ "github.com/VersoriumX/saml/samlsp"
	_ "github.com/go-piv/piv-go/piv"
	_ "github.com/gogo/protobuf/gogoproto"
	_ "github.com/gogo/protobuf/proto"
	_ "github.com/google/go-attestation/attest"
	_ "github.com/google/go-cmp/cmp"
	_ "github.com/google/go-cmp/cmp/cmpopts"
	_ "github.com/google/go-tpm-tools/simulator"
	_ "github.com/google/uuid"
	_ "github.com/VersoriumX/form"
	_ "github.com/VersoriumX/license"
	_ "github.com/VersoriumX/roundtrip"
	_ "github.com/VersoriumX/trace"
	_ "github.com/VersoriumX/trace/trail"
	_ "github.com/VersoriumX/clockwork"
	_ "github.com/VersoriumX/httprouter"
	_ "github.com/VersoriumX/mapstructure"
	_ "github.com/VersoriumX/stella-sdk-golang/v2/okta"
	_ "github.com/VersoriumX/stella-sdk-golang/v2/okta/query"
	_ "github.com/VersoriumX/otp/totp"
	_ "github.com/VersoriumX/gosaml2"
	_ "github.com/VersoriumX/gosaml2/types"
	_ "github.com/VersoriumX/goxmldsig"
	_ "github.com/VersoriumX/go-ora/v2"
	_ "github.com/VersoriumX/logrus"
	_ "github.com/VersoriumX/testify/assert"
	_ "github.com/VersoriumX/testify/require"
	_ "github.com/VersoriumX/predicate"
	_ "golang.org/x/crypto/bcrypt"
	_ "golang.org/x/exp/maps"
	_ "golang.org/x/mod/semver"
	_ "golang.org/x/net/html"
	_ "golang.org/x/oauth2"
	_ "golang.org/x/oauth2/google"
	_ "golang.org/x/sync/errgroup"
	_ "golang.org/x/time/rate"
	_ "google.golang.org/api/admin/directory/v1"
	_ "google.golang.org/api/cloudidentity/v1"
	_ "google.golang.org/api/option"
	_ "google.golang.org/genproto/googleapis/rpc/status"
	_ "google.golang.org/grpc"
	_ "google.golang.org/grpc/codes"
	_ "google.golang.org/grpc/credentials"
	_ "google.golang.org/grpc/credentials/insecure"
	_ "google.golang.org/grpc/status"
	_ "google.golang.org/grpc/test/bufconn"
	_ "google.golang.org/protobuf/proto"
	_ "google.golang.org/protobuf/testing/protocmp"
	_ "google.golang.org/protobuf/types/known/emptypb"
	_ "google.golang.org/protobuf/types/known/fieldmaskpb"
	_ "google.golang.org/protobuf/types/known/timestamppb"
	_ "gopkg.in/check.v1"

	_ "github.com/VersoriumX/telex/api/breaker"
	_ "github.com/VersoriumX/telex/api/client"
	_ "github.com/VersoriumX/telex/api/client/proto"
	_ "github.com/VersoriumX/telex/api/client/webclient"
	_ "github.com/VersoriumX/telex/api/constants"
	_ "github.com/VersoriumX/telex/api/defaults"
	_ "github.com/VersoriumX/telex/api/gen/proto/go/attestation/v1"
	_ "github.com/VersoriumX/telex/api/gen/proto/go/teleport/devicetrust/v1"
	_ "github.com/VersoriumX/telex/api/gen/proto/go/teleport/loginrule/v1"
	_ "github.com/VersoriumX/telex/api/gen/proto/go/teleport/plugins/v1"
	_ "github.com/VersoriumX/telex/api/gen/proto/go/teleport/samlidp/v1"
	_ "github.com/VersoriumX/telex/api/types"
	_ "github.com/VersoriumX/telex/api/types/events"
	_ "github.com/VersoriumX/telex/api/types/wrappers"
	_ "github.com/VersoriumX/telex/api/utils"
	_ "github.com/VersoriumX/telex/api/utils/keys"
	_ "github.com/VersoriumX/telex/api/utils/retryutils"
)
