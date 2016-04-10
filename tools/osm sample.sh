#!/bin/bash
#donwload e update dati da Openstreetmap

#luoghi con traduzione in cinese 
echo '[out:json][timeout:25];area(3600280245)->.searchArea;(node["name:zh"](area.searchArea);way["name:zh"](area.searchArea);relation["name:zh"](area.searchArea););out body;>;out skel qt;' | query-overpass > ChinesePlaces.geojson

./update.sh ChinesePlaces.geojson

#artigiani
echo '[out:json][timeout:25];area(3600280245)->.searchArea;(node["craft"](area.searchArea);way["craft"](area.searchArea);relation["craft"](area.searchArea););out body;>;out skel qt;' | query-overpass > artigiani.geojson

./update.sh artigiani.geojson
