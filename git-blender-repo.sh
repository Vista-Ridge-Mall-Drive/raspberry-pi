#!/bin/sh

#
# https://developer.blender.org/diffusion/B/
#

# read-only access
git clone git://git.blender.org/blender.git

# read/write access
# git clone git@git.blender.org:blender.git

cd blender
git submodule update --init --recursive
git submodule foreach git checkout master
git submodule foreach git pull --rebase origin master


sudo apt-get install -y libjpeg-dev libopenexr-dev libopenjpeg-dev libtiff-dev libopenal-dev libsdl2-dev libsdl-dev 
sudo apt-get install -y libsndfile1-dev libfftw3-dev  libssl-dev libboost-all-dev libpython-dev libtbb-dev
sudo apt-get install -y libopenexr-dev libsdl1.2-dev libopenjp2-7-dev opencollada-dev libjemalloc-dev libopenvdb-dev 
sudo apt-get install -y libblosc-dev libspnav0 alembic python-alembic python3-alembic libopenimageio-dev llvm
sudo apt-get install cmake -y

make

