#!/bin/sh

# https://openimagedenoise.github.io/downloads.html

git clone --recursive https://github.com/OpenImageDenoise/oidn.git

sudo apt-get install -y cmake
sudo apt-get install -y cmake-curses-gui
sudo apt-get install -y libtbb-dev

mkdir oidn/build
cd oidn/build

ccmake ..

make
