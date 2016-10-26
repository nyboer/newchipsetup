#!/bin/bash

sudo apt-get update && sudo apt-get install -y autopoint libpulse-dev libncurses5-dev libasound2-dev texinfo
wget ftp://ftp.gnu.org/gnu/cursynth/cursynth-1.5.tar.gz
tar -xvf cursynth-1.5.tar.gz
cd cursynth-1.5
autoreconf --force -i && ./configure && make clean &&  make
sudo make install