#!/usr/bin/env bash

REGISTRY_URL=docker.io/curiouscontainers/cc-image-fedora
TAG=0.12

docker pull ${REGISTRY_URL}
docker pull docker.io/fedora:25
docker build --no-cache=true -t ${REGISTRY_URL} .
docker push ${REGISTRY_URL}

if [[ ! -z ${TAG} ]]; then
    docker tag ${REGISTRY_URL} ${REGISTRY_URL}:${TAG}
    docker push ${REGISTRY_URL}:${TAG}
fi
