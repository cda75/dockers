#!/bin/bash
docker rm -f dns && docker run -d --name=dns --dns=127.0.0.1 --publish=53:53/udp --publish=10000:10000 --volume=/srv/docker/bind:/data --env='ROOT_PASSWORD=P@ssw0rd' cda75/dns:latest
