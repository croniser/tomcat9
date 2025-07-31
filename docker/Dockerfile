FROM tomcat:9.0.107-jdk21-temurin

ENV CATALINA_HOME=/usr/local/tomcat
ENV JPDA_OPTS="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005"

WORKDIR $CATALINA_HOME

RUN rm -rf /usr/local/tomcat/webapps/ROOT
COPY resources/ $CATALINA_HOME

RUN ln -s ${CATALINA_HOME}/webapps.dist/manager ${CATALINA_HOME}/webapps/;

EXPOSE 8080 5005

CMD ["catalina.sh", "jpda", "run"]


# docker build -t gcroniser/tomcat9 .
# docker run -p 8080:8080 tomcat9
# docker tag tomcat9 gcroniser/tomcat9:latest
# docker login
# docker push gcroniser/tomcat9:latest