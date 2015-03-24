FROM nginx
MAINTAINER Jasper Timmer <jasper.timmer@ibanx-hse.com>

ADD run.sh /run.sh
RUN chmod +x /run.sh

USER user

# the config and templates
RUN mkdir /home/user/consul
ADD consul.conf /home/user/consul/consul.conf
ADD unite.ctmpl /home/user/consul/unite.ctmpl

ENTRYPOINT /run.sh
