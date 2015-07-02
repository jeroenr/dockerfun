
FROM busybox

ADD ./elasticsearch/config /usr/share/elasticsearch/config
ADD ./elasticsearch/data /usr/share/elasticsearch/data
ADD ./mysql/my.cnf /etc/mysql/conf.d/ibanx.cnf
ADD ./mysql/create_unite_dbs.sql /mysql/create_unite_dbs.sql
ADD ./nginx/ibanx.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /mysql && chmod -R 777 /mysql && chown -R 1000:1000 /mysql
RUN mkdir -p /application-data && chmod -R 777 /application-data && chown -R 1000:1000 /application-data
RUN mkdir -p /usr/share/elasticsearch/data && mkdir -p /usr/share/elasticsearch/config && chmod -R 777 /usr/share/elasticsearch && chown -R 1000:1000 /usr/share/elasticsearch
RUN mkdir -p /etc/mysql/conf.d && chmod -R 700 /etc/mysql/conf.d && chown -R 1000:1000 /etc/mysql/conf.d
RUN mkdir -p /etc/nginx/conf.d && chmod -R 777 /etc/nginx/conf.d && chown -R 1000:1000 /etc/nginx/conf.d

VOLUME ["/mysql","/etc/mysql/conf.d","/etc/nginx/conf.d","/usr/share/elasticsearch/config","/usr/share/elasticsearch/data"]

CMD /bin/sh
