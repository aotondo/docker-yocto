#!/bin/bash
if [ -z "$(ls -A /home/yocto/poky/)" ]; then
   echo "-- Downloading Poky from Git --"
   chown -R yocto:users /home/yocto/
   runuser -u yocto git clone git://git.yoctoproject.org/poky /home/yocto/poky/
   echo "-- Checking out Hardknott tag --"
   cd /home/yocto/poky/
   git checkout -t origin/hardknott -b my-hardknott
fi
# Ping localhost to keep container alive
tail -f /var/log/*
