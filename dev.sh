#!/bin/bash
sudo apt-get  update && sudo apt-get install -y python-setuptools i2c-tools python-dev build-essential git autoconf x11vnc software-properties-common locales
sudo easy_install pip
git clone https://github.com/xtacocorex/CHIP_IO.git