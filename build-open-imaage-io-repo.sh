

git clone https://github.com/OpenImageIO/oiio.git

cd oiio

mkdir build
cd build


sudo apt-get install -y cmake libtiff-dev libopenexr-dev libboost-all-dev libbz2-dev libhdf5-dev libopencolorio-dev libopencv-calib3d-dev libdcmtk-dev field3d-tools 

sudo apt-get install -y libgif-dev libheif-dev libraw-dev libopenvdb-dev webp libqt4-opengl-dev pybind11-dev libsquish-dev

cmake .. -DCMAKE_BUILD_TYPE=Release

make

sudo make install
make clean

