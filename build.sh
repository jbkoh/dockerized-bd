#!/bin/bash

#cd bd3ds
#docker build -t bd3ds .
#docker push jbkoh/bd3ds

rm -r bd3cs/app
cp -r BuildingDepot-v3/buildingdepot/CentralService bd3cs/app
cp -r configs bd3cs/
cp BuildingDepot-v3/pip_packages.list bd3cs/
cd bd3cs
docker build -t bd3cs .
#docker push jbkoh/bd3cs

#docker pull mongo
#docker pull influxdb
