#!/bin/bash

# add a single file to github repo
curl -i -X PUT -H 'Authorization: token XXXXXXXX' -d "{\"path\": \"$1\", \
\"message\": \"create file\", \"content\": \"$(openssl base64 -A -in $1)\", \"branch\": \"master\"}" \
https://api.github.com/repos/iltempe/opendataprato/contents/$1