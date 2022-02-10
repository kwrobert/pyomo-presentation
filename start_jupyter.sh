#!/bin/bash

docker pull jupyter/scipy-notebook:latest
docker build -t hackfreeordie:pyomo . 
EXISTING_CONTAINER_ID="$(docker ps -a | grep hfod-pyomo-jupyter | tr -s " " | cut -d " " -f 1)"
if [ -n "$EXISTING_CONTAINER_ID" ]; then
    echo "Removing existing hfod-pyomo-jupyter container $EXISTING_CONTAINER_ID"
    docker rm $EXISTING_CONTAINER_ID
fi
docker run --name hfod-pyomo-jupyter \
    --volume "$(pwd)":/home/hackfree \
    --publish 8888:8888 \
    --user root \
    -e NB_USER="hackfree" \
    -e CHOWN_HOME=yes \
    hackfreeordie:pyomo
