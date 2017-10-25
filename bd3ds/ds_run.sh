#!/bin/bash


#docker pull jbkoh/bd3cs
docker rm -f mybd3ds 
docker create --name mybd3ds -p 82:443 \
  -v /home/jbkoh/Downloads/log/:/var/log/buildingdepot \
  bd3ds
docker cp configs/bd3.cert mybd3ds:/certs/bd3.cert
docker cp configs/bd3.key mybd3ds:/certs/bd3.key
docker start mybd3ds -a


#docker pull jbkoh/bd3ds
