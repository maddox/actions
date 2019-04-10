#!/bin/sh


curl \
-H "Content-Type: application/x-www-form-urlencoded" \
--data-urlencode "token=$APP_TOKEN" \
--data-urlencode "user=$USER_KEY" \
--data-urlencode "title=$TITLE" \
--data-urlencode "message=$MESSAGE" \
--data-urlencode "url=$URL" \
--data-urlencode "url_title=$URL_TITLE" \
--data-urlencode "sound=$SOUND" \
--data-urlencode "priority=$PRIORITY" \
--data-urlencode "timestamp=$(date +%s)" \
"https://api.pushover.net/1/messages.json"
