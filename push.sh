#!/usr/bin/env bash

DOCKER_HUB_ID=42milez
IMAGE_NAME=cpp-ci-base
TAG=$(date "+%Y%m%d")

docker build --no-cache -t ${DOCKER_HUB_ID}/${IMAGE_NAME}:${TAG} .

docker push ${DOCKER_HUB_ID}/${IMAGE_NAME}:${TAG}
