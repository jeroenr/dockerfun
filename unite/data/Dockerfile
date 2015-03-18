
FROM busybox

ADD ./configuration /configuration
ADD ./tomcat /tomcat

RUN mkdir -p /tomcat && chmod -R 777 /tomcat && chown -R 1000:1000 /tomcat

VOLUME ["/tomcat","/configuration"]

CMD /bin/sh
