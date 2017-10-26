#!/bin/bash


#docker pull jbkoh/bd3cs
docker rm -f mybd3cs_nossl 
docker create --name mybd3cs_nossl -p 81:80 \
  bd3cs_nossl
docker start mybd3cs_nossl -a

#docker pull jbkoh/bd3ds
