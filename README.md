#Running Servlets in Tomcat in Docker on VSCode with JPDA Debugging

In VSCode, run build task, or run each step manually:
- Docker Build: `docker build -t tomcat9 docker`
- Docker Run: `docker run -d -p 8080:8080 -p 5005:5005 --name tomcat9 tomcat9`
- Maven Build: `mvn clean deploy`

navigate to http://localhost:8080/tomcat-template/test




