docker-webex
============

Run Cisco WebEx [1] inside docker.

To use it simply clone this repository and run the **webex.sh** script.<br/>
This will build the image and execute firefox in the resulting container
ready to go to the WebEx site.

N.B. At the moment this requires the **lxc** exec driver (option `--exec-driver=lxc`).<br/>
If docker displays `Cannot use --lxc-conf with execdriver: native-0.2` or to use the **native** driver edit **webex.sh** and replace `--lxc-conf='lxc.cgroup.devices.allow = c 116:* rwm'` with `--privileged`.

Status
------

* Audio and various sharing options work. 
* Webcam video is limited to view-only.

1. http://www.webex.com/
