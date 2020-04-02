#!/bin/sh

#
# https://developer.blender.org/diffusion/B/
# https://wiki.blender.org/wiki/Building_Blender
#

# read-only access
git clone git://git.blender.org/blender.git

# read/write access
# git clone git@git.blender.org:blender.git

cd blender
git submodule update --init --recursive
git submodule foreach git checkout master
git submodule foreach git pull --rebase origin master


sudo apt-get -y install cmake-curses-gui
sudo apt-get -y install libtbb-dev

#sudo apt-get install -y libjpeg-dev libopenexr-dev libopenjpeg-dev libtiff-dev libopenal-dev libsdl2-dev libsdl-dev libsndfile1-dev libfftw3-dev  libssl-dev libboost-all-dev libpython-dev libtbb-dev libopenexr-dev libsdl1.2-dev libopenjp2-7-dev opencollada-dev libjemalloc-dev libopenvdb-dev libblosc-dev libspnav0 alembic python-alembic python3-alembic libopenimageio-dev llvm libopencolorio-dev libvpx5 libopenimageio-dev python3-numpy openexr libjxr-tools
#sudo apt-get install libjpeg-dev libopenexr-dev libopenjpeg-dev libtiff-dev libopenal-dev libsdl2-dev libsdl-dev libsndfile1-dev libfftw3-dev  libssl-dev libboost-all-dev libpython-dev libtbb-dev -y libopenexr-dev libsdl1.2-dev libopenjp2-7-dev opencollada-dev libjemalloc-dev libopenvdb-dev libblosc-dev libspnav0 alembic python-alembic python3-alembic libopenimageio-dev llvm libopencolorio-dev libvpx5 libopenimageio-dev python3-numpy openexr libjxr-tools  libjack-jackd2-dev
#sudo apt-get install libjpeg-dev libopenexr-dev libopenjpeg-dev libtiff-dev libopenal-dev libsdl2-dev libsdl-dev libsndfile1-dev libfftw3-dev  libssl-dev libboost-all-dev libpython-dev libtbb-dev -y libopenexr-dev libsdl1.2-dev libopenjp2-7-dev opencollada-dev libjemalloc-dev libopenvdb-dev libblosc-dev libspnav0 alembic python-alembic python3-alembic libopenimageio-dev llvm libopencolorio-dev libvpx5 libopenimageio-dev python3-numpy openexr libjxr-tools  libjack-jackd2-dev libavformat-dev libopenimageio-dev libopenimageio2.0 python3-openimageio libswscale-dev libavdevice-dev
sudo apt-get install libjpeg-dev libopenexr-dev libtiff-dev libopenal-dev libsdl2-dev libsdl-dev libsndfile1-dev libfftw3-dev  libssl-dev libboost-all-dev libpython-dev libtbb-dev -y libopenexr-dev libsdl1.2-dev libopenjp2-7-dev opencollada-dev libjemalloc-dev libopenvdb-dev libblosc-dev libspnav0 alembic python-alembic python3-alembic libopenimageio-dev llvm libopencolorio-dev libvpx5 libopenimageio-dev python3-numpy openexr libjxr-tools  libjack-jackd2-dev libavformat-dev libopenimageio-dev libopenimageio2.0 python3-openimageio libswscale-dev libavdevice-dev libopenjp2-7

sudo apt-get install cmake -y

make

