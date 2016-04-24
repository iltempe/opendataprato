#!/bin/bash

#download a single file of images data in your local folder from Mapillary (max 10 milioni)
curl "https://a.mapillary.com/v2/search/im/geojson?client_id=CLIENT ID&max_lat=43.9320&max_lon=11.2050&min_lat=43.8240&min_lon=10.9767&limit=10000000&page=0" > mapillary-image.geojson

#download a single file of sequences data in your local folder from Mapillary (max 10 milioni)
curl "https://a.mapillary.com/v2/search/s/geojson?client_id=CLIENT ID&max_lat=43.9320&max_lon=11.2050&min_lat=43.8240&min_lon=10.9767&limit=10000000&page=0" > mapillary-sequence.geojson

#download a single file of signals data in your local folder from Mapillary (max 10 milioni
curl -g "https://a.mapillary.com/v2/search/im/geojson/or?or_package=trafficsign_eu_6.0&min_score=2&max_lat=43.9320&max_lon=11.2050&min_lat=43.8240&min_lon=10.9767&client_id=CLIENT ID&limit=1000000&page=0" > mapillary-signals.geojson