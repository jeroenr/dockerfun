## Run on boot of docker host
export HOSTNAME=node1
export HOST_ADDR=10.0.0.204
docker run -d -p 8400:8400 -p 8500:8500 -p 8600:53/udp -h $HOSTNAME progrium/consul -server -bootstrap -ui-dir /ui
docker run -d -v /var/run/docker.sock:/tmp/docker.sock -h $HOSTNAME gliderlabs/registrator:master -ip $HOST_ADDR consul://$HOST_ADDR:8500

## Per instance

# Run the database
MYSQL_ID=$(docker run -d --volumes-from data -e STARTUP_SQL=/tmp/create_unite_dbs.sql ibanx/mysql)

# Create a RUN_ID
RUN_ID=`date -u +%s`

# Start tomcat
TOMCAT_ID=$(docker run -d --volumes-from data --volumes-from consul -p 8080 -e SERVICE_TAGS=${RUN_ID} -e TAG=${RUN_ID} --link $MYSQL_ID:mysql ibanx/tomcat)

# Start nginx
NGINX_ID=$(docker run -d --volumes-from data --volumes-from consul -p 80 -e SERVICE_TAGS=${RUN_ID} -e TAG=${RUN_ID} ibanx/nginx)


