#!/bin/bash

docker rm -f mybd3cr

docker run -p 8080:8080 -p 6379:6379 -d --name mybd3cr bd3cr
