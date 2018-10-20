#!/bin/sh

set -e

while [ $MAX_TRIES -gt 0 ]
do
  STATUS=$(curl -L --max-time 1 -s -o /dev/null -w '%{http_code}' $URL)
  if [ $STATUS -eq 200 ]; then
    exit 0
  else
    MAX_TRIES=$((MAX_TRIES - 1))
  fi
  sleep $SECONDS_BETWEEN_CHECKS
done

exit 1
