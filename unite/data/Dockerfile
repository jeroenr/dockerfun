
FROM busybox

ADD ./configuration /configuration
ADD ./tomcat /tomcat

VOLUME ["/tomcat","/configuration"]

CMD /bin/sh
