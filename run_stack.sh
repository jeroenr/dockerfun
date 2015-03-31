#!/bin/sh

set -x

# Run volumes
CONSUL_ID=$(docker create ibanx/consul)

DATA_ID=$(docker create ibanx/data)

# Run the database
MYSQL_ID=$(docker run -d --volumes-from ${DATA_ID} -e STARTUP_SQL=/tmp/create_unite_dbs.sql ibanx/mysql)

# Create a RUN_ID
RUN_ID=`date -u +%s`

# Start nginx
NGINX_ID=$(docker run -d --volumes-from ${DATA_ID} --volumes-from ${CONSUL_ID} -p 80 -e SERVICE_TAGS=${RUN_ID} -e TAG=${RUN_ID} ibanx/nginx)

sleep 2

# Start tomcat
TOMCAT_ID=$(docker run -d --volumes-from ${DATA_ID} --volumes-from ${CONSUL_ID} -p 8080 -e SERVICE_TAGS=${RUN_ID} -e TAG=${RUN_ID} --link $MYSQL_ID:unitedb --link $MYSQL_ID:jackrabbitdb ibanx/tomcat)

PORT=$(docker port ${NGINX_ID} | sed 's/.*://')

echo $(echo "{\"id\": ${RUN_ID}, \"port\": ${PORT}, \"containers\": [\"${CONSUL_ID}\", \"${DATA_ID}\", \"${MYSQL_ID}\", \"${NGINX_ID}\", \"${TOMCAT_ID}\"], \"containers_as_string\": \"${CONSUL_ID} ${DATA_ID} ${MYSQL_ID} ${NGINX_ID} ${TOMCAT_ID}\"}" | jq .)
