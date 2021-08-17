#!/bin/bash
if [ -z "$(ls -A /home/yocto/poky/)" ]; then
   echo Folder of Poky have not been detected, downloading Poky...
   su yocto
   cd
   git clone git://git.yoctoproject.org/poky
fi
# Ping localhost to keep container alive
ping localhost
