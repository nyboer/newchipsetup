#!/bin/bash

 sudo add-apt-repository "deb http://apt.puredata.info/releases `lsb_release -c | awk '{print $2}'` main"
 sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 9f0fe587374bbe81
 sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key D63D3D09C39F5EEB
 sudo apt-get update
 sudo apt-get install -y puredata

echo "@audio - rtprio 99" | sudo tee --append /etc/security/limits.conf
echo "@audio - memlock unlimited" | sudo tee --append /etc/security/limits.conf
WHO=$USER
sudo adduser $WHO audio