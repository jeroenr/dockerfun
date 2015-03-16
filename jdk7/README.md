# JDK7 container

All the docker files to deploy openJDK 7 in a docker container.
## Building
```
docker build -t ibanx/jdk7 .
```

## Publishing (optionally, needs docker account)
```
docker push ibanx/jdk7
```

## Usage
```
docker run  -d -p 1337:8080 -v /full/path/to/deployment:/deployment ibanx/jdk7
```
