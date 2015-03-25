FROM codenvy/jdk7_tomcat7
MAINTAINER Jasper Timmer <jasper.timmer@ibanx-hse.com>

USER root

ADD run.sh /run.sh
RUN chmod +x /run.sh

# for Unite
ENV CATALINA_BASE /tomcat
#VOLUME ["/home/user/unite", "/home/user/configuration", "/home/user/application-data"]

# Setup tomcat
ENV JAVA_OPTS -XX:MaxPermSize=1G -XX:+CMSClassUnloadingEnabled -XX:+CMSPermGenSweepingEnabled -Dfile.encoding=UTF-8
ENV CATALINA_OPTS -Dunite.environment=ACCEPTANCE

ENTRYPOINT /run.sh

