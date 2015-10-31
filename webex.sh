#!/bin/sh

docker rm --force webex || true
docker build --tag=webex .
docker run -ti \
	--env DISPLAY \
	--name=webex \
	--net=host \
	--lxc-conf='lxc.cgroup.devices.allow = c 116:* rwm' \
	--volume /dev/snd:/dev/snd \
	--volume /dev/shm:/dev/shm \
	--volume /etc/machine-id:/etc/machine-id \
	--volume /run/user/$(id -u)/pulse:/run/user/webex/pulse \
	--volume /var/lib/dbus:/var/lib/dbus \
	--volume $HOME/.pulse:/home/webex/.pulse \
	--volume $HOME/.Xauthority:/home/webex/.Xauthority \
	webex
