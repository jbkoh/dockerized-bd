#!/bin/bash


docker run -d --name bd_influxdb -p 8086:8086 influxdb
docker run -d --name bd_mongo -p 27017:27017 mongo


bash ../bd3cs_nossl/cs_run.sh
bash ../bd3ds_nossl/ds_run.sh
bash ../bd3cr/cr_run.sh


#docker pull jbkoh/bd3ds
