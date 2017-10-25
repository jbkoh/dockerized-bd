#!/bin/bash


#docker pull jbkoh/bd3cs
docker rm -f mybd3cs 
docker create --name mybd3cs -p 81:443 \
  -v /home/jbkoh/Downloads/log/:/var/log/buildingdepot \
  bd3cs
docker cp configs/bd3.cert mybd3cs:/certs/bd3.cert
docker cp configs/bd3.key mybd3cs:/certs/bd3.key
docker start mybd3cs -a


#docker pull jbkoh/bd3ds
