#!/bin/sh

set -x

if [ "$#" -ne 2 ]; then
    echo "Illegal number of parameters"
    exit 1
fi

export HOSTNAME=$1
export HOST_ADDR=$2

docker run -d --name consul -p 8400:8400 -p 8500:8500 -p 8600:53/udp -h $HOSTNAME progrium/consul -server -bootstrap -ui-dir /ui
docker run -d --name registrator -v /var/run/docker.sock:/tmp/docker.sock -h $HOSTNAME gliderlabs/registrator:master -ip $HOST_ADDR consul://$HOST_ADDR:8500
