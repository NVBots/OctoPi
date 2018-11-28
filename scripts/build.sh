#!/bin/bash

CONTAINER_NAME=cioctoprint


if [[ "$(docker ps -qf name=${CONTAINER_NAME})" == "" ]]; then
    echo "Container $CONTAINER_NAME not running. Start by calling 'docker-compose up -d' from src folder"
    exit 1
fi

docker exec -it $CONTAINER_NAME /CustomPiOS/nightly_build_scripts/custompios_nightly_build