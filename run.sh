#!/bin/bash


docker pull influxdb 
docker pull mongo
docker run -d --name bd_influxdb -p 8086:8086 influxdb
docker run -d --name bd_mongo -p 27017:27017 mongo

docker pull jbkoh/bd3cs
docker pull jbkoh/bd3ds
docker run --name mybd3cs -p 81:443 bd3cs
docker run --name mybd3cs -d -p 81:443 bd3cs

docker run --name mybd3ds -p 82:443 bd3ds
docker run --name mybd3ds -d -p 82:443 bd3ds
