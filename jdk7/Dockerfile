FROM ubuntu
MAINTAINER Jeroen Rosenberg < jeroen {dot} rosenberg [at] gmail {dot} com>

RUN apt-get update && apt-get -y install python-software-properties software-properties-common
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update && apt-get -y upgrade

# accept license
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections

# install jdk 7
RUN apt-get -y install oracle-java7-installer && apt-get clean
RUN update-alternatives --display java
RUN echo "JAVA_HOME=/usr/lib/jvm/java-7-oracle" >> /etc/environment

