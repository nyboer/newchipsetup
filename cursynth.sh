#!/bin/bash

sudo apt-get update && sudo apt-get install -y autopoint libpulse-dev libncurses5-dev libasound2-dev texinfo git
git clone https://github.com/mtytel/cursynth.git
cd cursynth
autoreconf --force -i && ./configure && make clean &&  make
sudo make install