docker-webex
============

Run Cisco WebEx [1] inside docker.

To use it simply clone this repository and run the **webex.sh** script.<br/>
This will build the image and execute firefox in the resulting container
ready to go to the WebEx site.

Please note this runs with `--privileged` since the LXC built-in
exec driver is no longer available.

Chrome users might want to check the Cisco WebEx App for Chrome [2].

Status
------

* Audio and various sharing options work. 
* Webcam video is limited to view-only. This is a limitation on the
  Linux client.

1. http://www.webex.com/
2. https://chrome.google.com/webstore/detail/cisco-webex-extension/jlhmfgmfgeifomenelglieieghnjghma
