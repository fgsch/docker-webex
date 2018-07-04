FROM ubuntu:trusty
MAINTAINER Federico G. Schwindt <fgsch@lodoss.net>
ENV DEBIAN_FRONTEND noninteractive
RUN dpkg --add-architecture i386 
RUN apt-get update
RUN apt-get install -y curl icedtea-7-plugin:i386 libdbus-glib-1-2:i386 \
    libgtk-3.0:i386 libxt6:i386 openjdk-7-jre:i386
RUN curl -s https://download-installer.cdn.mozilla.net/pub/firefox/releases/52.9.0esr/linux-i686/en-US/firefox-52.9.0esr.tar.bz2 | tar xfj - -C /usr/local
RUN useradd -ms /bin/bash webex
USER webex
WORKDIR /home/webex
CMD /usr/local/firefox/firefox
