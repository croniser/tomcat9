#Running Servlets in Tomcat in Docker on VSCode with JPDA Debugging

## Commands
- docker build -t gcroniser/tomcat9-jdk21-temurin .
- docker build -f docker/Dockerfile --build-arg RESOURCE_DIR=docker/resources/ -t gcroniser/tomcat9-jdk21-temurin .

- docker run -p 8080:8080 tomcat9
- docker tag tomcat9 gcroniser/tomcat9:latest
- docker login
- docker push gcroniser/tomcat9:latest

- Docker Run: `docker run -d -p 8080:8080 -p 5005:5005 --name tomcat9 tomcat9`

navigate to http://localhost:8080/tomcat-template/test




## Links
- [docker hub:](https://hub.docker.com/repositories/gcroniser)