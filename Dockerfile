FROM java:8-jdk

EXPOSE 8080

ADD jetty  /opt/
RUN tar -xvf /opt/jetty-distribution-*.tar.gz -C /opt/
RUN rm /opt/jetty-distribution-*.tar.gz
RUN mv /opt/jetty-distribution-* /opt/jetty
RUN rm -rf /opt/jetty/webapps.demo

WORKDIR /opt/jetty

CMD ["java", "-jar", "start.jar",  "jetty.home=/opt/jetty"]
~                                                                 
