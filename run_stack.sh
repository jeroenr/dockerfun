#!/bin/sh

set -x

# Run the database
MYSQL_ID=$(docker run -d --volumes-from data11 -e STARTUP_SQL=/tmp/create_unite_dbs.sql ibanx/mysql)

# Create a RUN_ID
RUN_ID=`date -u +%s`

# Start tomcat
TOMCAT_ID=$(docker run -d --volumes-from data11 --volumes-from consul7 -p 8080 -e SERVICE_TAGS=${RUN_ID} -e TAG=${RUN_ID} --link $MYSQL_ID:unitedb --link $MYSQL_ID:jackrabbitdb ibanx/tomcat)

# Start nginx
NGINX_ID=$(docker run -d --volumes-from data11 --volumes-from consul7 -p 80 -e SERVICE_TAGS=${RUN_ID} -e TAG=${RUN_ID} ibanx/nginx)


