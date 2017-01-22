#!/bin/sh

LOCAL=$1
LOCAL=${LOCAL:-54}

docker run --detach   --name dns-gen   --publish ${LOCAL}:53/udp --volume /var/run/docker.sock:/var/run/docker.sock helterscelter/dns-gen
