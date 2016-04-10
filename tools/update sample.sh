#!/bin/bash

# update a file to github repo
curl -i -X PUT -H 'Authorization: token XXXXXXXXXXXXX' -d "{\"path\": \"$1\", \
\"message\": \"update\", \"content\": \"$(openssl base64 -A -in $1)\", \"branch\": \"master\",\
\"sha\": $(curl -X GET https://api.github.com/repos/iltempe/opendataprato/contents/$1 | jq .sha)}" \
https://api.github.com/repos/iltempe/opendataprato/contents/$1