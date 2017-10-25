#!/bin/bash 
rm -rf bd3cs/app
rm -rf bd3ds/app

cp -rf BuildingDepot-v3/buildingdepot/CentralService bd3cs/app
cp -rf BuildingDepot-v3/buildingdepot/DataService bd3ds/app


rm -rf bd3cs/configs
rm -rf bd3ds/configs
cp -rf configs bd3cs/configs
cp -rf configs bd3ds/configs
cp -rf BuildingDepot-v3/pip_packages.list bd3cs/configs/
cp -rf BuildingDepot-v3/pip_packages.list bd3ds/configs/
