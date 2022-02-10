#!/bin/bash

docker build -t hackfreeordie:pyomo . 
docker run -d \
  -it \
  --name devtest \
  -v "$(pwd)"/target:/app \
  hackfreeordie:pyomo
