
FROM busybox

ADD ./configuration /configuration
ADD ./tomcat /tomcat
ADD ./mysql /mysql

RUN mkdir -p /tomcat && chmod -R 777 /tomcat && chown -R 1000:1000 /tomcat
RUN mkdir -p /mysql && chmod -R 777 /mysql && chown -R 1000:1000 /mysql

VOLUME ["/tomcat","/configuration","/mysql"]

CMD /bin/sh
