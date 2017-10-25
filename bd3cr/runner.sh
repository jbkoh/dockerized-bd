#!/bin/bash

docker rm -f mybd3cr

docker run -p 8080:8080 --name mybd3cr bd3cr
