#!/bin/bash

image="harbor.shomamamama.com/hohohoo/taco:${TACO_VERSION}"

if docker image inspect "$image" &> /dev/null; then
    echo "Image exists. Removing..."
    docker rmi "$image"
else
    echo "Image does not exist."
fi