#!/bin/bash

set -e
set -o allexport
[ -f .env ] && . .env
set +o allexport

docker run -d \
  --name "${CONTAINER_NAME:-gcroniser}" \
  -p "${PORT_TOMCAT:-8080}:8080" \
  -p "${PORT_JPDA:-5005}:5005" \
  -e ENABLE_JPDA="${ENABLE_JPDA:-false}" \
  "${DOCKER_REPO:-docker.io}/${DOCKER_IMAGE:-gcroniser}:${DOCKER_TAG:-latest}"
