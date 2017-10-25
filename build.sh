#!/bin/bash

#cd bd3ds
#docker build -t bd3ds .
#docker push jbkoh/bd3ds

bash configure.sh

rm -r bd3cs/app
cp -r BuildingDepot-v3/buildingdepot/CentralService bd3cs/app
cp -r configs bd3cs/
cp BuildingDepot-v3/pip_packages.list bd3cs/
cd bd3cs
docker build -t bd3cs .

rm -r bd3ds/app
cp -r BuildingDepot-v3/buildingdepot/DataService bd3ds/app
cp -r configs bd3ds/
cp BuildingDepot-v3/pip_packages.list bd3ds/
cd bd3ds
docker build -t bd3ds .




#docker push jbkoh/bd3cs

#docker pull mongo
#docker pull influxdb
