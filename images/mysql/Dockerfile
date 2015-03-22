FROM tutum/mysql:5.6
MAINTAINER Jasper Timmer <jasper.timmer@ibanx-hse.com>

# iBanx HSE Modification
ENV MYSQL_PASS password
ADD my.cnf /etc/mysql/conf.d/my.cnf
ADD create_unite_dbs.sql /tmp/create_unite_dbs.sql

