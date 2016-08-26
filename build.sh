#!/usr/bin/env bash

REGISTRY_URL=docker.io/curiouscontainers/cc-image-fedora

git clone https://github.com/curious-containers/cc-container-worker.git
cd cc-container-worker
git fetch --all
git reset --hard origin/master
cd ..

docker pull docker.io/fedora:24
docker pull ${REGISTRY_URL}
docker build -t ${REGISTRY_URL} .
docker push ${REGISTRY_URL}
