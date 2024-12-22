#!/bin/env bash
go run github.com/oapi-codegen/oapi-codegen/v2/cmd/oapi-codegen@latest --config=oapi-codegen-config.yml https://datahub.metoffice.gov.uk/downloads/api-definitions/weathercloud2api_subscriber.json

# disabled while go-json decoding has a bug making it much slower than encoding/json
# patch -s -N -p1 --ignore-whitespace <<'ENDPATCH'
# --- a/metoffice-sitespecific-forecast.gen.go      2024-12-21 20:48:58.079480302 +0000
# +++ b/metoffice-sitespecific-forecast.gen.go      2024-12-21 20:48:27.231480571 +0000
# @@ -5,7 +5,7 @@
 
#  import (
#  	"context"
# -	"encoding/json"
# +	"github.com/goccy/go-json"
#  	"fmt"
#  	"io"
#  	"net/http"

# ENDPATCH
