<<<<<<< HEAD
FROM 10.0.29.249:5000/jetty
=======
FROM java:8-jdk

MAINTAINER pengqiuyuanfj@gmail.com
# cribbed from cjlyth/jetty
WORKDIR /opt
ENV VERSION 8.1.17.v20150415
RUN curl "http://mirrors.ibiblio.org/eclipse/jetty/$VERSION/dist/jetty-distribution-$VERSION.tar.gz" | tar xvfz -
RUN ln -sv jetty-distribution-$VERSION jetty
ADD etc /opt/jetty/etc
CMD /opt/jetty/bin/jetty.sh -d supervise

>>>>>>> parent of 47e3e51... Update Dockerfile
EXPOSE 8080

