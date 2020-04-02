

git clone https://github.com/OpenImageIO/oiio.git

cd oiio

mkdir build
cd build

sudo apt-get install -y cmake libtiff-dev libopenexr-dev libboost-all-dev

cmake .. -DCMAKE_BUILD_TYPE=Release

make

sudo make install
make clean

