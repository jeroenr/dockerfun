FROM debian:jessie

RUN apt-get update
RUN apt-get install -y wget
RUN wget https://github.com/hashicorp/consul-template/releases/download/v0.7.0/consul-template_0.7.0_linux_amd64.tar.gz
RUN tar xzfv consul-template_0.7.0_linux_amd64.tar.gz
RUN mv consul-template_0.7.0_linux_amd64/consul-template /usr/local/bin/
RUN chmod +x /usr/local/bin/consul-template
RUN rmdir consul-template_0.7.0_linux_amd64
RUN rm consul-template_0.7.0_linux_amd64.tar.gz

ADD ./consul /consul

RUN mkdir -p /consul && chmod -R 700 /consul && chown -R 1000:1000 /consul

VOLUME ["/usr/local/bin/","/consul"]

CMD /bin/sh
