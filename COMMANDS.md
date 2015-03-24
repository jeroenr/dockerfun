# MySQL
sudo docker run -d --volumes-from data --name unitedb -e STARTUP_SQL=/mysql/create_unite_dbs.sql -e MYSQL_PASS=password tutum/mysql:5.6

# Tomcat
sudo docker run -d --volumes-from data -p 8080 --link unitedb:unitedb -e SERVICE_TAGS=tomcat7 -e TAG=tomcat7 ibanx/tomcat

