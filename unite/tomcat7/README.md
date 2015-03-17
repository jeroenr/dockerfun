# Tomcat7 container

All the docker files to deploy Apache Tomcat 7 in a docker container.
## Building
```
docker build -t ibanx/tomcat7 .
```

## Publishing (optionally, needs docker account)
```
docker push ibanx/tomcat7
```

## Usage
```
# Place your war file(s) in local directory called deployment and add it as a volume 
#
# Optinally specify JAVA_OPTS to be added to default JAVA_OPTS for tomcat
#
# Optionally specify a custom Xmx parameter to replace default setting for tomcat
#
# Optionally add a startup script at deployment/init.sh and it will be run inside the 
#     container before tomcat comes up
#

docker run  -it -p 1337:8080 -v /full/path/to/deployment:/deployment ibanx/tomcat7
```
