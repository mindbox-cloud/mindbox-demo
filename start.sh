#!/bin/bash

docker rm $(docker ps -aq)
sleep 3
docker rmi $(docker images -q)
sleep 5
docker run --detach --publish 80:80 --name mindbox-demo kalx77/mindbox-demo:latest
