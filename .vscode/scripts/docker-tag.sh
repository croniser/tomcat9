#!/bin/bash

set -e
set -o allexport
[ -f .env ] && . .env
set +o allexport

docker tag "${DOCKER_REPO:-docker.io}/${DOCKER_IMAGE:-gcroniser}:${DOCKER_TAG:-latest}" "${DOCKER_IMAGE:-gcroniser}/${DOCKER_TAG:-latest}"