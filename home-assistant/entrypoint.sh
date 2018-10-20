#!/bin/sh

set -e

curl \
--silent --output /dev/null \
-H "Authorization: Bearer $HASS_TOKEN" \
-H "Content-Type: application/json" \
-d "$SERVICE_DATA" \
"$HASS_HOST/api/services/$DOMAIN/$SERVICE"
