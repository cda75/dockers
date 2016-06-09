#!/bin/bash

dns_pid=`docker ps -a | grep "dns$" | awk '{print $1;}'`
if [ -z $dns_pid ];
then
 docker run -d --name=dns --dns=127.0.0.1 --publish=53:53/udp --publish=10000:10000 --volume=/srv/docker/bind:/data --env='ROOT_PASSWORD=P@ssw0rd' cda75/dns:latest
else
 docker kill $dns_pid
 docker rm -f $dns_pid
 docker run -d --name=dns --dns=127.0.0.1 --publish=53:53/udp --publish=10000:10000 --volume=/srv/docker/bind:/data --env='ROOT_PASSWORD=P@ssw0rd' cda75/dns:latest
fi

 
