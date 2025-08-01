ARG TOMCAT_VERSION=9.0.107
FROM tomcat:${TOMCAT_VERSION}

ARG JPDA_PORT=5005 \
    CATALINA_HOME=/usr/local/tomcat \
    RESOURCE_DIR=resources/

LABEL org.opencontainers.image.title="Tomcat 9 JDK 21 Docker Image" \
      org.opencontainers.image.description="Apache Tomcat 9 server with OpenJDK 21, configured for JPDA debugging and custom resources." \
      org.opencontainers.image.version="${VERSION}" \
      org.opencontainers.image.revision="${GIT_COMMIT}" \
      org.opencontainers.image.created="${BUILD_DATE}" \
      org.opencontainers.image.source="https://github.com/croniser/tomcat9" \
      org.opencontainers.image.authors="annie.onomous@example.com"

ENV CATALINA_HOME=${CATALINA_HOME} \
    JPDA_OPTS="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:${JPDA_PORT}" \
    ENABLE_JPDA=false

WORKDIR $CATALINA_HOME

RUN rm -rf ${CATALINA_HOME}/webapps/ROOT
COPY ${RESOURCE_DIR} ${CATALINA_HOME}
RUN ln -s ${CATALINA_HOME}/webapps.dist/manager ${CATALINA_HOME}/webapps/

EXPOSE 8080 ${JPDA_PORT}

CMD ["/bin/sh", "-c", "if [ \"$ENABLE_JPDA\" = \"true\" ]; then catalina.sh jpda run; else catalina.sh run; fi"]