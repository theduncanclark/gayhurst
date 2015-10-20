#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/..

curl -u chris-goodall:ihv24zu ftp://ftpuk99.meteogroup.co.uk/carboncommentary-postcodes.$(date +%Y%m%d.%H).csv -o "$DIR"/site/meteo.csv
curl http://www2.nationalgrid.com/WorkArea/DownloadAsset.aspx?id=33512 -o "$DIR"/site/nationalgrid.csv
curl https://docs.google.com/spreadsheets/d/1IytEeqNdlBSuoCxG-xTIZ3eMV8p8UTlAeTvDtJ61RYE/export?format=csv -o "$DIR"/site/postcodes.csv

