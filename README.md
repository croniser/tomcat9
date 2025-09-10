#Running Servlets in Tomcat in Docker on VSCode with JPDA Debugging

## Commands
- ```
docker build \
  --build-arg TOMCAT_VERSION=11-jdk21-temurin-noble \
  --build-arg BUILD_DATE=$(date -u +%Y-%m-%dT%H:%M:%SZ) \
  --build-arg GIT_COMMIT=$(git rev-parse --short HEAD) \
  --build-arg JPDA_PORT=5005 \
  --build-arg RESOURCES_DIR=docker/resources/ \
  --build-arg VERSION=1.0.2 \
  -t gcroniser/tomcat11-jdk21:1.0.2 \
  -f docker/Dockerfile11 .
  ```


- ```
docker run -d \
  --name tomcat11-jdk21 \
  -p 8080:8080 \
  -p 5005:5005 \
  -e ENABLE_JPDA=false \
  gcroniser/tomcat11-jdk21:1.0.2
  ```

- ```docker tag gcroniser/tomcat11-jdk21:1.0.2 gcroniser/tomcat11-jdk21:1.0.2```
- ```docker login```
- ```docker push gcroniser/tomcat11-jdk21:1.0.2```


navigate to http://localhost:8080/tomcat-template/test




## Links
- [docker hub:](https://hub.docker.com/repositories/gcroniser)