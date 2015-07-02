#!/bin/sh

set -x

# Run volumes
CONSUL_ID=$(docker create oxyme/consul)

DATA_ID=$(docker create oxyme/data)

# Run the database
#MYSQL_ID=$(docker run -d --volumes-from ${DATA_ID} -e STARTUP_SQL=/tmp/create_unite_dbs.sql ibanx/mysql)

# Create a RUN_ID
RUN_ID=`date -u +%s`

# Start nginx
NGINX_ID=$(docker run -d --volumes-from ${DATA_ID} --volumes-from ${CONSUL_ID} -p 80 -e SERVICE_TAGS=${RUN_ID} -e TAG=${RUN_ID} nginx)

MONGO_ID=$(docker run -d -P -e SERVICE_TAGS=${RUN_ID} -e TAG=${RUN_ID} mongo)

SEARCH_STATS_ID=$(docker run -e SERVICE_TAGS=${RUN_ID} -e TAG=${RUN_ID} -d -P --volumes-from ${DATA_ID} --link $MONGO_ID:testdb search-stats-docker)


