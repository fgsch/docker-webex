#!/bin/sh

docker rm --force webex >/dev/null 2>&1
docker build --tag=webex .
docker run -ti \
	--env DISPLAY=unix$DISPLAY \
	--lxc-conf='lxc.cgroup.devices.allow = c 116:* rwm' \
	--name=webex \
	--volume /dev/snd:/dev/snd \
	--volume /tmp/.X11-unix:/tmp/.X11-unix \
	webex $1
