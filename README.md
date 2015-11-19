docker-webex
============

Run Cisco WebEx [1] inside docker.

To use it simply clone this repository and run the **webex.sh** script.<br/>
This will build the image and execute firefox in the resulting container
ready to go to the WebEx site.

N.B. At the moment this requires the **lxc** exec driver (option
`--exec-driver=lxc`).

To use the **native** driver edit **webex.sh** and replace
`--lxc-conf='lxc.cgroup.devices.allow = c 116:* rwm'` with `--privileged`.<br/>
*This will give extended privileges to this container and it's not
recommended!*

Status
------

* Audio and various sharing options work. 
* Webcam video is limited to view-only. This is a limitation on the
  Linux client.

1. http://www.webex.com/
