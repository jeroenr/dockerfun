## Run on boot of docker host
export HOSTNAME=node1
docker run -d -p 8400:8400 -p 8500:8500 -p 8600:53/udp -h $HOSTNAME progrium/consul -server -bootstrap -ui-dir /ui
docker run -d -v /var/run/docker.sock:/tmp/docker.sock -h $HOSTNAME gliderlabs/registrator consul://192.168.59.103:8500

## Per instance

# Run the database
MYSQL_ID=$(docker run -d -v /c/Users/unite-docker/volumes/mysql:/var/lib/mysql -p 3306 -e STARTUP_SQL=/tmp/create_unite_dbs.sql ibanx/mysql)

# Start tomcat
TOMCAT_ID=$(docker run -d -v /c/Users/unite-docker/volumes/tomcat:/home/user/unite -v /c/Users/unite-docker/volumes/configuration:/home/user/configuration -v /c/Users/unite-docker/volumes/application-data:/home/user/application-data -p 8080 --link $MYSQL_ID:mysql ibanx/tomcat)
