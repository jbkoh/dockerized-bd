#!/bin/bash


#docker pull jbkoh/bd3cs
docker rm -f mybd3dscr_nossl
docker create --name mybd3dscr_nossl -p 82:80 -p 8080:8080 \
  bd3dscr_nossl
docker start mybd3dscr_nossl -a


#docker pull jbkoh/bd3ds
