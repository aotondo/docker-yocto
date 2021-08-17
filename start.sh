#!/bin/bash
if [ -z "$(ls -A /home/yocto/poky/)" ]; then
   echo "-- Downloading Poky from Git --"
   su yocto
   cd
   git clone git://git.yoctoproject.org/poky
   cd poky
   echo "-- Checking out Hardknott tag --"
   git checkout -t origin/hardknott -b my-hardknott
   
fi
# Ping localhost to keep container alive
tail -f /var/log/*
