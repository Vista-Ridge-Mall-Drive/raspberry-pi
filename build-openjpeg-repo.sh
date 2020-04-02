

git clone https://github.com/uclouvain/openjpeg.git

sudo apt-get install -y liblcms2-dev  libtiff-dev libpng-dev libz-dev


cd openjpeg

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make

sudo make install
make clean
