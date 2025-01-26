module github.com/VersoriumX/teleport

go 1.21
toolchain go1.23.5

require (
	cloud.google.com/go/compute v1.31.1
	cloud.google.com/go/compute/metadata v0.6.0
	cloud.google.com/go/container v1.42.0
	cloud.google.com/go/firestore v1.17.0
	cloud.google.com/go/iam v1.2.2
	cloud.google.com/go/kms v1.20.1
	cloud.google.com/go/storage v1.43.0
	github.com/Azure/azure-sdk-for-go/sdk/azcore v1.17.0
	github.com/Azure/azure-sdk-for-go/sdk/azidentity v1.8.0
	github.com/Azure/azure-sdk-for-go/sdk/resourcemanager/compute/armcompute/v3 v3.0.1
	github.com/Azure/azure-sdk-for-go/sdk/resourcemanager/containerservice/armcontainerservice/v2 v2.4.0
	github.com/Azure/azure-sdk-for-go/sdk/resourcemanager/mysql/armmysql v1.2.0
	github.com/Azure/azure-sdk-for-go/sdk/resourcemanager/mysql/armmysqlflexibleservers v1.2.0
	github.com/Azure/azure-sdk-for-go/sdk/resourcemanager/postgresql/armpostgresql v1.2.0
	github.com/Azure/azure-sdk-for-go/sdk/resourcemanager/postgresql/armpostgresqlflexibleservers v1.1.0
	github.com/Azure/azure-sdk-for-go/sdk/resourcemanager/redis/armredis/v2 v2.3.0
	github.com/Azure/azure-sdk-for-go/sdk/resourcemanager/redisenterprise/armredisenterprise v1.2.0
	github.com/Azure/azure-sdk-for-go/sdk/resourcemanager/sql/armsql v1.2.0
	github.com/Azure/azure-sdk-for-go/sdk/resourcemanager/subscription/armsubscription v1.2.0
	github.com/Azure/azure-sdk-for-go/sdk/storage/azblob v1.6.0
	github.com/Azure/go-ansiterm v0.0.0-20230124172434-306776ec8161
	github.com/aws/aws-sdk-go v1.55.6
	github.com/aws/aws-sdk-go-v2 v1.34.0
	github.com/aws/aws-sdk-go-v2/config v1.29.2
	github.com/aws/aws-sdk-go-v2/credentials v1.17.55
	github.com/aws/aws-sdk-go-v2/feature/dynamodb/attributevalue v1.16.0
	github.com/aws/aws-sdk-go-v2/feature/ec2/imds v1.16.25
	github.com/aws/aws-sdk-go-v2/feature/s3/manager v1.17.54
	github.com/aws/aws-sdk-go-v2/service/athena v1.49.6
	github.com/aws/aws-sdk-go-v2/service/dynamodb v1.39.6
	github.com/aws/aws-sdk-go-v2/service/ec2 v1.201.1
	github.com/aws/aws-sdk-go-v2/service/ec2instanceconnect v1.27.12
	github.com/aws/aws-sdk-go-v2/service/ecs v1.53.9
	github.com/aws/aws-sdk-go-v2/service/glue v1.105.5
	github.com/aws/aws-sdk-go-v2/service/iam v1.38.8
	github.com/aws/aws-sdk-go-v2/service/rds v1.93.8
	github.com/aws/aws-sdk-go-v2/service/s3 v1.74.1
	github.com/aws/aws-sdk-go-v2/service/sns v1.33.15
	github.com/aws/aws-sdk-go-v2/service/sqs v1.37.10
	github.com/aws/aws-sdk-go-v2/service/sts v1.33.10
	github.com/bufbuild/connect-go v1.10.0
	github.com/buildkite/bintest/v3 v3.3.0
	github.com/distribution/reference v0.6.0
	github.com/gizak/termui/v3 v3.1.0
	github.com/go-ldap/ldap/v3 v3.4.10
	github.com/go-logr/logr v1.4.2
	github.com/go-mysql-org/go-mysql v1.5.0 // replaced
	github.com/go-piv/piv-go v1.11.0
	github.com/go-resty/resty/v2 v2.16.5
	github.com/go-webauthn/webauthn v0.11.2
	github.com/gocql/gocql v1.7.0
	github.com/gogo/protobuf v1.3.2 // replaced
	github.com/golang-jwt/jwt/v4 v4.5.1
	github.com/google/btree v1.1.3
	github.com/google/go-attestation v0.5.1
	github.com/google/go-cmp v0.6.0
	github.com/google/go-containerregistry v0.20.3
	github.com/google/go-querystring v1.1.0
	github.com/google/go-tpm-tools v0.4.4
	github.com/google/shlex v0.0.0-20191202100458-e7afc7fbc510
	github.com/google/uuid v1.6.0
	github.com/googleapis/gax-go/v2 v2.14.0
	github.com/gorilla/websocket v1.5.3
	github.com/gravitational/form v0.0.0-20151109031454-c4048f792f70
	github.com/gravitational/license v0.0.0-20231228155916-928ed9ac0335
	github.com/gravitational/oxy v0.0.0-20221029012416-9fbf4c444680
	github.com/gravitational/roundtrip v1.0.2
	github.com/gravitational/teleport/api v0.0.0
	github.com/gravitational/trace v1.4.0
	github.com/gravitational/ttlmap v0.0.0-20171116003245-91fd36b9004c
	github.com/grpc-ecosystem/go-grpc-middleware/providers/openmetrics/v2 v2.0.0-rc.3
	github.com/json-iterator/go v1.1.12
	github.com/keys-pub/go-libfido2 v1.5.3-0.20220306005615-8ab03fb1ec27 // replaced
	github.com/microsoft/go-mssqldb v0.0.0-00010101000000-000000000000 // replaced
	github.com/opencontainers/go-digest v1.0.0
	github.com/opensearch-project/opensearch-go/v2 v2.3.0
	github.com/pkg/sftp v1.13.7
	github.com/prometheus/client_golang v1.20.5
	github.com/prometheus/client_model v0.6.1
	github.com/prometheus/common v0.55.0
	github.com/redis/go-redis/v9 v9.6.1 // replaced
	github.com/segmentio/parquet-go v0.0.0-20230622230624-510764ae9e80
	github.com/sigstore/cosign/v2 v2.4.1
	github.com/sigstore/sigstore v1.8.9
	github.com/snowflakedb/gosnowflake v1.12.1
	go.etcd.io/etcd/api/v3 v3.5.13
	go.etcd.io/etcd/client/v3 v3.5.13
	go.mongodb.org/mongo-driver v1.17.2
	go.opentelemetry.io/contrib/instrumentation/github.com/aws/aws-sdk-go-v2/otelaws v0.59.0
	go.opentelemetry.io/contrib/instrumentation/google.golang.org/grpc/otelgrpc v0.58.0
	go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.58.0
	go.opentelemetry.io/otel v1.34.0
	go.opentelemetry.io/otel/exporters/otlp/otlptrace v1.33.0
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc v1.33.0
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracehttp v1.33.0
	go.opentelemetry.io/otel/metric v1.34.0
	go.opentelemetry.io/otel/sdk v1.33.0
	go.opentelemetry.io/otel/trace v1.34.0
	go.opentelemetry.io/proto/otlp v1.4.0
	golang.org/x/crypto v0.32.0
	golang.org/x/exp v0.0.0-20240613232115-7f521ea00fb8
	golang.org/x/mod v0.22.0
	golang.org/x/net v0.34.0
	golang.org/x/oauth2 v0.25.0
	golang.org/x/sync v0.10.0
	golang.org/x/sys v0.29.0
	golang.org/x/term v0.28.0
	golang.org/x/text v0.21.0
	golang.org/x/time v0.8.0
	google.golang.org/api v0.214.0
	google.golang.org/genproto/googleapis/rpc v0.0.0-20241209162323-e6fa225c2576
	google.golang.org/grpc v1.68.1
	google.golang.org/grpc/cmd/protoc-gen-go-grpc v1.5.1
	google.golang.org/protobuf v1.36.3
	gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c
	gopkg.in/dnaeon/go-vcr.v3 v3.2.0
	gopkg.in/ini.v1 v1.67.0
	gopkg.in/square/go-jose.v2 v2.6.0
	gopkg.in/yaml.v2 v2.4.0
	gopkg.in/yaml.v3 v3.0.1
	software.sslmate.com/src/go-pkcs12 v0.5.0
)

require (
	github.com/HdrHistogram/hdrhistogram-go v1.1.2
	github.com/Microsoft/go-winio v0.6.2
	github.com/ThalesIgnite/crypto11 v1.2.5
	github.com/alecthomas/kingpin/v2 v2.4.0
	github.com/andybalholm/brotli v1.1.0
	github.com/armon/go-radix v0.0.0-20180808171621-7fddfc383310
	github.com/aws/smithy-go v1.22.2
	github.com/beevik/etree v1.2.0
	github.com/coreos/go-semver v0.3.1
	github.com/creack/pty v1.1.18
	github.com/crewjam/saml v0.4.14
	github.com/digitorus/pkcs7 v0.0.0-20230818184609-3a137a874352
	github.com/dustin/go-humanize v1.0.1
	github.com/fxamacker/cbor/v2 v2.7.0
	github.com/ghodss/yaml v1.0.0
	github.com/hashicorp/go-version v1.2.0
	github.com/hashicorp/golang-lru/v2 v2.0.7
	github.com/jcmturner/gokrb5/v8 v8.4.4
	github.com/jonboulle/clockwork v0.5.0
	github.com/julienschmidt/httprouter v1.3.0
	github.com/mailgun/timetools v0.0.0-20170619190023-f3a7b8ffff47
	github.com/mailgun/ttlmap v0.0.0-20170619185759-c1c17f74874f
	github.com/mattn/go-sqlite3 v1.14.22
	github.com/miekg/pkcs11 v1.1.1
	github.com/mitchellh/mapstructure v1.5.0
	github.com/moby/term v0.5.0
	github.com/okta/okta-sdk-golang/v2 v2.20.0
	github.com/pelletier/go-toml v1.9.5
	github.com/pquerna/otp v1.4.0
	github.com/russellhaering/gosaml2 v0.9.1
	github.com/russellhaering/goxmldsig v1.4.0
	github.com/sijms/go-ora/v2 v2.8.23
	github.com/sirupsen/logrus v1.9.3
	github.com/spf13/cobra v1.8.1
	github.com/stretchr/testify v1.10.0
	github.com/vulcand/predicate v1.2.0
	k8s.io/api v0.28.3
	k8s.io/apimachinery v0.28.3
	k8s.io/client-go v0.28.3
	k8s.io/klog/v2 v2.120.1
	sigs.k8s.io/yaml v1.4.0
)

require (
	cloud.google.com/go v0.116.0 // indirect
	cloud.google.com/go/auth v0.13.0 // indirect
	cloud.google.com/go/auth/oauth2adapt v0.2.6 // indirect
	cloud.google.com/go/longrunning v0.6.2 // indirect
	github.com/99designs/go-keychain v0.0.0-20191008050251-8e49817e8af4 // indirect
	github.com/99designs/keyring v1.2.2 // indirect
	github.com/Azure/azure-sdk-for-go/sdk/internal v1.10.0 // indirect
	github.com/Azure/go-ntlmssp v0.0.0-20221128193559-754e69321358 // indirect
	github.com/AzureAD/microsoft-authentication-library-for-go v1.3.2 // indirect
	github.com/BurntSushi/toml v1.4.0 // indirect
	github.com/JohnCGriffin/overflow v0.0.0-20211019200055-46fa312c352c // indirect
	github.com/alecthomas/units v0.0.0-20211218093645-b94a6e3cc137 // indirect
	github.com/apache/arrow/go/v16 v16.0.0 // indirect
	github.com/asaskevich/govalidator v0.0.0-20230301143203-a9d515a09cc2 // indirect
	github.com/aws/aws-sdk-go-v2/aws/protocol/eventstream v1.6.8 // indirect
	github.com/aws/aws-sdk-go-v2/internal/configsources v1.3.29 // indirect
	github.com/aws/aws-sdk-go-v2/internal/endpoints/v2 v2.6.29 // indirect
	github.com/aws/aws-sdk-go-v2/internal/ini v1.8.2 // indirect
	github.com/aws/aws-sdk-go-v2/internal/v4a v1.3.29 // indirect
	github.com/aws/aws-sdk-go-v2/service/dynamodbstreams v1.24.16 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/accept-encoding v1.12.2 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/checksum v1.5.3 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/endpoint-discovery v1.10.10 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/presigned-url v1.12.10 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/s3shared v1.18.10 // indirect
	github.com/aws/aws-sdk-go-v2/service/sso v1.24.12 // indirect
	github.com/aws/aws-sdk-go-v2/service/ssooidc v1.28.11 // indirect
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/blang/semver v3.5.1+incompatible // indirect
	github.com/boombuler/barcode v1.0.1 // indirect
	github.com/cenkalti/backoff/v4 v4.3.0 // indirect
	github.com/cespare/xxhash/v2 v2.3.0 // indirect
	github.com/containerd/stargz-snapshotter/estargz v0.16.3 // indirect
	github.com/coreos/go-systemd/v22 v22.5.0 // indirect
	github.com/crewjam/httperr v0.2.0 // indirect
	github.com/cyberphone/json-canonicalization v0.0.0-20231011164504-785e29786b46 // indirect
	github.com/danieljoos/wincred v1.2.1 // indirect
	github.com/davecgh/go-spew v1.1.2-0.20180830191138-d8f796af33cc // indirect
	github.com/dgryski/go-rendezvous v0.0.0-20200823014737-9f7001d12a5f // indirect
	github.com/digitorus/timestamp v0.0.0-20231217203849-220c5c2851b7 // indirect
	github.com/docker/cli v27.5.0+incompatible // indirect
	github.com/docker/distribution v2.8.3+incompatible // indirect
	github.com/docker/docker-credential-helpers v0.8.2 // indirect
	github.com/dvsekhvalnov/jose2go v1.6.0 // indirect
	github.com/emicklei/go-restful/v3 v3.11.0 // indirect
	github.com/evanphx/json-patch v4.12.0+incompatible // indirect
	github.com/felixge/httpsnoop v1.0.4 // indirect
	github.com/fsnotify/fsnotify v1.7.0 // indirect
	github.com/gabriel-vasile/mimetype v1.4.3 // indirect
	github.com/go-asn1-ber/asn1-ber v1.5.7 // indirect
	github.com/go-chi/chi v4.1.2+incompatible // indirect
	github.com/go-jose/go-jose/v3 v3.0.3 // indirect
	github.com/go-jose/go-jose/v4 v4.0.4 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/go-openapi/analysis v0.23.0 // indirect
	github.com/go-openapi/errors v0.22.0 // indirect
	github.com/go-openapi/jsonpointer v0.21.0 // indirect
	github.com/go-openapi/jsonreference v0.21.0 // indirect
	github.com/go-openapi/loads v0.22.0 // indirect
	github.com/go-openapi/runtime v0.28.0 // indirect
	github.com/go-openapi/spec v0.21.0 // indirect
	github.com/go-openapi/strfmt v0.23.0 // indirect
	github.com/go-openapi/swag v0.23.0 // indirect
	github.com/go-openapi/validate v0.24.0 // indirect
	github.com/go-webauthn/x v0.1.14 // indirect
	github.com/goccy/go-json v0.10.2 // indirect
	github.com/godbus/dbus v0.0.0-20190726142602-4481cbc300e2 // indirect
	github.com/golang-jwt/jwt/v5 v5.2.1 // indirect
	github.com/golang-sql/civil v0.0.0-20190719163853-cb61b32ac6fe // indirect
	github.com/golang-sql/sqlexp v0.1.0 // indirect
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da // indirect
	github.com/golang/protobuf v1.5.4 // indirect
	github.com/golang/snappy v0.0.4 // indirect
	github.com/google/certificate-transparency-go v1.2.1 // indirect
	github.com/google/flatbuffers v24.3.25+incompatible // indirect
	github.com/google/gnostic-models v0.6.9-0.20230804172637-c7be7c783f49 // indirect
	github.com/google/go-tpm v0.9.1 // indirect
	github.com/google/go-tspi v0.3.0 // indirect
	github.com/google/gofuzz v1.2.0 // indirect
	github.com/google/s2a-go v0.1.8 // indirect
	github.com/googleapis/enterprise-certificate-proxy v0.3.4 // indirect
	github.com/grpc-ecosystem/go-grpc-middleware/v2 v2.0.0-rc.2.0.20210128111500-3ff779b52992 // indirect
	github.com/grpc-ecosystem/grpc-gateway/v2 v2.24.0 // indirect
	github.com/gsterjov/go-libsecret v0.0.0-20161001094733-a6f4afe4910c // indirect
	github.com/hailocab/go-hostpool v0.0.0-20160125115350-e80d13ce29ed // indirect
	github.com/hashicorp/go-uuid v1.0.3 // indirect
	github.com/hashicorp/hcl v1.0.1-vault-5 // indirect
	github.com/imdario/mergo v0.3.16 // indirect
	github.com/in-toto/in-toto-golang v0.9.0 // indirect
	github.com/inconshreveable/mousetrap v1.1.0 // indirect
	github.com/jcmturner/aescts/v2 v2.0.0 // indirect
	github.com/jcmturner/dnsutils/v2 v2.0.0 // indirect
	github.com/jcmturner/gofork v1.7.6 // indirect
	github.com/jcmturner/goidentity/v6 v6.0.1 // indirect
	github.com/jcmturner/rpc/v2 v2.0.3 // indirect
	github.com/jedisct1/go-minisign v0.0.0-20230811132847-661be99b8267 // indirect
	github.com/jmespath/go-jmespath v0.4.0 // indirect
	github.com/josharian/intern v1.0.0 // indirect
	github.com/kelseyhightower/envconfig v1.4.0 // indirect
	github.com/klauspost/compress v1.17.11 // indirect
	github.com/klauspost/cpuid/v2 v2.2.7 // indirect
	github.com/kr/fs v0.1.0 // indirect
	github.com/kr/pretty v0.3.1 // indirect
	github.com/kr/text v0.2.0 // indirect
	github.com/kylelemons/godebug v1.1.0 // indirect
	github.com/letsencrypt/boulder v0.0.0-20240620165639-de9c06129bec // indirect
	github.com/magiconair/properties v1.8.7 // indirect
	github.com/mailgun/minheap v0.0.0-20170619185613-3dbe6c6bf55f // indirect
	github.com/mailru/easyjson v0.7.7 // indirect
	github.com/mattermost/xml-roundtrip-validator v0.1.0 // indirect
	github.com/mattn/go-runewidth v0.0.13 // indirect
	github.com/mitchellh/go-homedir v1.1.0 // indirect
	github.com/mitchellh/go-wordwrap v1.0.1 // indirect
	github.com/moby/spdystream v0.2.0 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/montanaflynn/stats v0.7.1 // indirect
	github.com/mtibben/percent v0.2.1 // indirect
	github.com/munnerz/goautoneg v0.0.0-20191010083416-a7dc8b61c822 // indirect
	github.com/nozzle/throttler v0.0.0-20180817012639-2ea982251481 // indirect
	github.com/nsf/termbox-go v0.0.0-20190121233118-02980233997d // indirect
	github.com/oklog/ulid v1.3.1 // indirect
	github.com/olekukonko/tablewriter v0.0.5 // indirect
	github.com/opencontainers/image-spec v1.1.0 // indirect
	github.com/opentracing/opentracing-go v1.2.0 // indirect
	github.com/patrickmn/go-cache v0.0.0-20180815053127-5633e0862627 // indirect
	github.com/pelletier/go-toml/v2 v2.2.2 // indirect
	github.com/pierrec/lz4/v4 v4.1.21 // indirect
	github.com/pingcap/errors v0.11.5-0.20201126102027-b0a155152ca3 // indirect
	github.com/pkg/browser v0.0.0-20240102092130-5ac0b6a4141c // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/pmezard/go-difflib v1.0.1-0.20181226105442-5d4384ee4fb2 // indirect
	github.com/prometheus/procfs v0.15.1 // indirect
	github.com/rivo/uniseg v0.4.4 // indirect
	github.com/rogpeppe/go-internal v1.13.1 // indirect
	github.com/sagikazarmark/locafero v0.4.0 // indirect
	github.com/sagikazarmark/slog-shim v0.1.0 // indirect
	github.com/sassoftware/relic v7.2.1+incompatible // indirect
	github.com/secure-systems-lab/go-securesystemslib v0.8.0 // indirect
	github.com/segmentio/encoding v0.3.5 // indirect
	github.com/shibumi/go-pathspec v1.3.0 // indirect
	github.com/siddontang/go v0.0.0-20180604090527-bdc77568d726 // indirect
	github.com/siddontang/go-log v0.0.0-20180807004314-8d05993dda07 // indirect
	github.com/sigstore/protobuf-specs v0.3.2 // indirect
	github.com/sigstore/rekor v1.3.6 // indirect
	github.com/sigstore/timestamp-authority v1.2.2 // indirect
	github.com/sourcegraph/conc v0.3.0 // indirect
	github.com/spf13/afero v1.11.0 // indirect
	github.com/spf13/cast v1.6.0 // indirect
	github.com/spf13/pflag v1.0.5 // indirect
	github.com/spf13/viper v1.19.0 // indirect
	github.com/stretchr/objx v0.5.2 // indirect
	github.com/subosito/gotenv v1.6.0 // indirect
	github.com/syndtr/goleveldb v1.0.1-0.20220721030215-126854af5e6d // indirect
	github.com/thales-e-security/pool v0.0.2 // indirect
	github.com/theupdateframework/go-tuf v0.7.0 // indirect
	github.com/titanous/rocacheck v0.0.0-20171023193734-afe73141d399 // indirect
	github.com/transparency-dev/merkle v0.0.2 // indirect
	github.com/vbatts/tar-split v0.11.6 // indirect
	github.com/x448/float16 v0.8.4 // indirect
	github.com/xdg-go/pbkdf2 v1.0.0 // indirect
	github.com/xdg-go/scram v1.1.2 // indirect
	github.com/xdg-go/stringprep v1.0.4 // indirect
	github.com/xhit/go-str2duration/v2 v2.1.0 // indirect
	github.com/youmark/pkcs8 v0.0.0-20240726163527-a2c0da244d78 // indirect
	github.com/zeebo/xxh3 v1.0.2 // indirect
	go.etcd.io/etcd/client/pkg/v3 v3.5.13 // indirect
	go.opencensus.io v0.24.0 // indirect
	go.opentelemetry.io/auto/sdk v1.1.0 // indirect
	go.uber.org/atomic v1.9.0 // indirect
	go.uber.org/multierr v1.11.0 // indirect
	go.uber.org/zap v1.27.0 // indirect
	golang.org/x/tools v0.29.0 // indirect
	golang.org/x/xerrors v0.0.0-20231012003039-104605ab7028 // indirect
	google.golang.org/genproto v0.0.0-20241118233622-e639e219e697 // indirect
	google.golang.org/genproto/googleapis/api v0.0.0-20241209162323-e6fa225c2576 // indirect
	gopkg.in/inf.v0 v0.9.1 // indirect
	gopkg.in/mgo.v2 v2.0.0-20190816093944-a6b53ec6cb22 // indirect
	k8s.io/kube-openapi v0.0.0-20231010175941-2dd684a91f00 // indirect
	k8s.io/utils v0.0.0-20240502163921-fe8a2dddb1d0 // indirect
	sigs.k8s.io/json v0.0.0-20221116044647-bc3834ca7abd // indirect
	sigs.k8s.io/structured-merge-diff/v4 v4.3.0 // indirect
)

// Update also `ignore` in .github/dependabot.yml.
replace (
	github.com/VersoriumX/go-oidc => github.com/gravitational/go-oidc v0.1.0
	github.com/VersoriumX/go-ora/v2 => github.com/gravitational/go-ora/v2 v2.0.0-20230821114616-e2a9f1131a46
	github.com/VersoriumX/go-redis/v9 => github.com/gravitational/redis/v9 v9.0.2-teleport.2
	github.com/VersoriumX/httprouter => github.com/gravitational/httprouter v1.3.1-0.20220408074523-c876c5e705a5
	github.com/VersoriumX/kingpin/v2 => github.com/gravitational/kingpin/v2 v2.1.11-0
	github.com/VersoriumX/predicate => github.com/gravitational/predicate v1.3.1
	// replace module github.com/VersoriumX/spdystream until https://github.com/VersoriumX/pull/91 merges and deps are updated
	// otherwise tests fail with a data race detection.
	github.com/VersoriumX/spdystream => github.com/gravitational/spdystream v0.0.0-20230512133543-4e46862ca9bf
	github.com/datastax/go-cassandra-native-protocol => github.com/VersoriumX/go-versoriumx-native-protocol v0.0.0
	github.com/go-mysql-org/go-mysql => github.com/gravitational/go-mysql v1.5.0-teleport.1
	github.com/gogo/protobuf => github.com/gravitational/protobuf v1.3.2-teleport.1
	github.com/gravitational/teleport/api => ./api
	github.com/keys-pub/go-libfido2 => github.com/gravitational/go-libfido2 v1.5.3-0.20230728202351-0b44d4f35e28
	github.com/microsoft/go-mssqldb => github.com/gravitational/go-mssqldb v0.11.1-0.20230331180905-0f76f1751cd3
)
