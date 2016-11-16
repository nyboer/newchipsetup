#!/bin/bash
# install puredata 0.47.1-2
echo "deb http://ftp.de.debian.org/debian stretch main" | sudo tee --append /etc/apt/sources.list
sudo apt-get update
sudo apt-get install -y puredata
echo "@audio - rtprio 99" | sudo tee --append /etc/security/limits.conf
echo "@audio - memlock unlimited" | sudo tee --append /etc/security/limits.conf
WHO=$USER
sudo adduser $WHO audio
