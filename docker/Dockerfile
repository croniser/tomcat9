FROM tomcat:9.0.80

ENV CATALINA_HOME=/usr/local/tomcat
ENV JPDA_OPTS="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005"

WORKDIR $CATALINA_HOME

COPY resources/ $CATALINA_HOME

RUN ln -s ${CATALINA_HOME}/webapps.dist/manager ${CATALINA_HOME}/webapps/;

EXPOSE 8080 5005

CMD ["catalina.sh", "jpda", "run"]