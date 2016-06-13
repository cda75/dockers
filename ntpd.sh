#!/bin/sh

/usr/bin/docker run --privileged -v /var/empty --restart=always -d -v /home/core/ntp/ntpd.conf:/etc/ntpd.conf cda75/ntpd -d -f /etc/ntpd.conf -s

