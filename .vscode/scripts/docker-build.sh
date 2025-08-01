#!/bin/sh

set -e
set -o allexport
[ -f .env ] && . .env
set +o allexport

docker  build \
        --build-arg TOMCAT_VERSION="${TOMCAT_VERSION:-9.0.107}" \
        --build-arg BUILD_DATE="$(date -u +%Y-%m-%dT%H:%M:%SZ)" \
        --build-arg GIT_COMMIT="$(git rev-parse --short HEAD)" \
        --build-arg JPDA_PORT="${JPDA_PORT:-5005}" \
        --build-arg RESOURCES_DIR="${RESOURCES_DIR:-docker/resources/}" \
        --build-arg VERSION="${VERSION}" \
        -t "$DOCKER_REPO/$DOCKER_IMAGE:$DOCKER_TAG" \
        -f ${DOCKERFILE_DIR:-docker/Dockerfile} .