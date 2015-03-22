FROM nginx
MAINTAINER Jasper Timmer <jasper.timmer@ibanx-hse.com>

# Add consul-template
USER root
RUN apt-get update
RUN apt-get install -y wget
RUN wget https://github.com/hashicorp/consul-template/releases/download/v0.7.0/consul-template_0.7.0_linux_amd64.tar.gz
RUN tar xzfv consul-template_0.7.0_linux_amd64.tar.gz
RUN mv consul-template_0.7.0_linux_amd64/consul-template /usr/local/bin/
RUN chmod +x /usr/local/bin/consul-template
RUN rmdir consul-template_0.7.0_linux_amd64
RUN rm consul-template_0.7.0_linux_amd64.tar.gz

ADD run.sh /run.sh
RUN chmod +x /run.sh

USER user

# the config and templates
RUN mkdir /home/user/consul
ADD consul.conf /home/user/consul/consul.conf
ADD scq.ctmpl /home/user/consul/scq.ctmpl
ADD pcq.ctmpl /home/user/consul/pcq.ctmpl
ADD chq.ctmpl /home/user/consul/chq.ctmpl

ENTRYPOINT /run.sh
