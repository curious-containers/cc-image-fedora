#!/usr/bin/env bash

REGISTRY_URL=docker.io/curiouscontainers/cc-image-fedora

docker pull docker.io/fedora:24
docker pull ${REGISTRY_URL}
docker build -t ${REGISTRY_URL} .
docker push ${REGISTRY_URL}
