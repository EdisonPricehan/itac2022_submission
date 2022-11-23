#!/bin/bash

echo "Loading docker image ..."
docker load -i image/itac_davis-purdue.tar

echo "Current available docker images: "
docker images

echo "Run the loaded image ..."
PWD=$(pwd)
echo "Any changes made in run.sh should be in image/run.sh, instead of code/docker/run.sh"
cp ${PWD}/image/run.sh ${PWD}/code/docker/run.sh
chmod +x ${PWD}/code/docker/run.sh
docker run -v ${PWD}/code:/code -v ${PWD}/data:/data --gpus all itac_davis-purdue:v1 docker/run.sh

echo "Image exited!"