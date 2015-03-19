
FROM busybox

ADD ./configuration /configuration
ADD ./tomcat /tomcat
ADD ./mysql /mysql
ADD ./application-data /application-data
ADD ./jackrabbit /home/user/tomcat7/bin/jackrabbit

RUN mkdir -p /application-data && chmod -R 777 /application-data && chown -R 1000:1000 /application-data
RUN mkdir -p /tomcat && chmod -R 777 /tomcat && chown -R 1000:1000 /tomcat
RUN mkdir -p /home/user/tomcat7/bin/jackrabbit && chmod -R 777 /home/user/tomcat7/bin/jackrabbit && chown -R 1000:1000 /home/user/tomcat7/bin/jackrabbit
RUN mkdir -p /mysql/data && chmod -R 700 /mysql && chmod -R 777 /mysql/data && chown -R 1000:1000 /mysql

VOLUME ["/tomcat","/configuration","/mysql","/application-data","/home/user/tomcat7/bin/jackrabbit"]

CMD /bin/sh
