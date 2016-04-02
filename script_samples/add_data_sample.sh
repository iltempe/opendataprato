#!/bin/bash

# download a single file in your local folder from remote repo.
curl -o biometeo-eng.xml http://data.biometeo.it/PRATO/PRATO_ENG.xml

# create file
curl -i -X PUT -H 'Authorization: token XXXXXXXXXXXXXXX' -d "{\"path\": \"biometeo-eng.xml\", \
\"message\": \"create file\", \"content\": \"$(openssl base64 -A -in biometeo-eng.xml)\", \"branch\": \"master\"}" \
https://api.github.com/repos/iltempe/opendataprato/contents/biometeo-eng.xml