#!/bin/bash


#docker pull jbkoh/bd3cs
docker rm -f mybd3ds_nossl_nossl
docker create --name mybd3ds_nossl -p 82:80 \
  -v /home/jbkoh/Downloads/log/:/var/log/buildingdepot \
  bd3ds_nossl
docker start mybd3ds_nossl -a


#docker pull jbkoh/bd3ds
