#!/bin/sh

set -x

sudo docker rm -f $(sudo docker ps -a -q)
