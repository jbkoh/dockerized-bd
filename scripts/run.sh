#!/bin/bash


docker run -d --name bd_influxdb -p 8086:8086 influxdb
docker run -d --name bd_mongo -p 27017:27017 mongo


docker run -d --name mycs -p 81:80 jbkoh/buildingdepot:cs_nossl
docker run -d --name myds -p 82:80 -p 8080:8080 jbkoh/buildingdepot:ds_nossl

