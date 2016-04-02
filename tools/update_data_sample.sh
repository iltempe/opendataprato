#!/bin/bash

#Dati realativi a meteo biometeo

#download files in your localfolder
curl -o previsioni-meteo.xml http://www.lamma.rete.toscana.it/previ/ita/xml/comuni_web/dati/prato.xml

#previsioni meteo (entro le 10 e entro le 16)
curl -i -X PUT -H 'Authorization: token XXXXXXXX' -d "{\"path\": \"previsioni-meteo.xml\", \
\"message\": \"update\", \"content\": \"$(openssl base64 -A -in previsioni-meteo.xml)\", \"branch\": \"master\",\
\"sha\": $(curl -X GET https://api.github.com/repos/iltempe/opendataprato/contents/previsioni-meteo.xml | jq .sha)}" \
https://api.github.com/repos/iltempe/opendataprato/contents/previsioni-meteo.xml
