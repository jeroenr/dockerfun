
FROM busybox

ADD ./configuration /configuration
ADD ./tomcat /tomcat
ADD ./mysql/my.cnf /etc/mysql/conf.d/ibanx.cnf
ADD ./application-data /application-data
ADD ./jackrabbit /home/user/tomcat7/bin/jackrabbit
ADD ./nginx/ibanx.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /configuration && chmod -R 777 /configuration && chown -R 1000:1000 /configuration
RUN mkdir -p /application-data && chmod -R 777 /application-data && chown -R 1000:1000 /application-data
RUN mkdir -p /tomcat && chmod -R 777 /tomcat && chown -R 1000:1000 /tomcat
RUN mkdir -p /home/user/tomcat7/bin/jackrabbit && chmod -R 777 /home/user/tomcat7/bin/jackrabbit && chown -R 1000:1000 /home/user/tomcat7/bin/jackrabbit
RUN mkdir -p /etc/mysql/conf.d && chmod -R 700 /etc/mysql/conf.d && chown -R 1000:1000 /etc/mysql/conf.d
RUN mkdir -p /etc/nginx/conf.d && chmod -R 700 /etc/nginx/conf.d && chown -R 1000:1000 /etc/nginx/conf.d

VOLUME ["/tomcat","/configuration","/etc/mysql/conf.d","/etc/nginx/conf.d","/application-data","/home/user/tomcat7/bin/jackrabbit"]

CMD /bin/sh
