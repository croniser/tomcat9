#Running Servlets in Tomcat in Docker on VSCode with JPDA Debugging

## Commands
- ```docker build \
  --build-arg TOMCAT_VERSION=9.0.107 \
  --build-arg BUILD_DATE=$(date -u +%Y-%m-%dT%H:%M:%SZ) \
  --build-arg GIT_COMMIT=$(git rev-parse --short HEAD) \
  --build-arg JPDA_PORT=5005 \
  --build-arg RESOURCES_DIR=docker/resources/ \
  --build-arg VERSION=1.0.0 \
  -t gcroniser/tomcat9-jdk21:1.0.1 \
  -f docker/Dockerfile```
- ```docker run -d \
  --name tomcat9-jdk21 \
  -p 8080:8080 \
  -p 5005:5005 \
  -e ENABLE_JPDA=false \
  gcroniser/tomcat9-jdk21:1.0.0```
- ```docker tag tomcat9-jdk21 gcroniser/tomcat9:latest```
- ```docker login```
- ```docker push gcroniser/tomcat9:latest```


navigate to http://localhost:8080/tomcat-template/test




## Links
- [docker hub:](https://hub.docker.com/repositories/gcroniser)