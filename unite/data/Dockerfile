
FROM busybox

ADD ./configuration /configuration
ADD ./tomcat /tomcat
ADD ./mysql /mysql
ADD ./application-data /application-data

RUN mkdir -p /application-data && chmod -R 777 /application-data && chown -R 1000:1000 /application-data
RUN mkdir -p /tomcat && chmod -R 777 /tomcat && chown -R 1000:1000 /tomcat
RUN mkdir -p /mysql/data && chmod -R 700 /mysql && chmod -R 777 /mysql/data && chown -R 1000:1000 /mysql

VOLUME ["/tomcat","/configuration","/mysql","/application-data"]

CMD /bin/sh
