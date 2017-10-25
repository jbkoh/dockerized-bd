#!/bin/bash

cd bd3ds
docker build -t bd3ds .
cd ../bd3cs
docker build -t bd3cs .

docker pull mongo
docker pull influxdb
