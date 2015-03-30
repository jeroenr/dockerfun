#!/bin/sh

set -x

# Run the database
MYSQL_ID=$(docker run -d --volumes-from data11 -e STARTUP_SQL=/tmp/create_unite_dbs.sql ibanx/mysql)

# Run volumes
CONSUL_ID=$(docker create ibanx/consul)

DATA_ID=$(docker create ibanx/data)

# Create a RUN_ID
RUN_ID=`date -u +%s`

# Start tomcat
TOMCAT_ID=$(docker run -d --volumes-from ${DATA_ID} --volumes-from ${CONSUL_ID} -p 8080 -e SERVICE_TAGS=${RUN_ID} -e TAG=${RUN_ID} --link $MYSQL_ID:unitedb --link $MYSQL_ID:jackrabbitdb ibanx/tomcat)

# Start nginx
NGINX_ID=$(docker run -d --volumes-from ${DATA_ID} --volumes-from ${CONSUL_ID} -p 80 -e SERVICE_TAGS=${RUN_ID} -e TAG=${RUN_ID} ibanx/nginx)


