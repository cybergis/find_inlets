# Tested on Ubuntu 18.04
# apt install build-essential cmake
# apt install libgdal

export CPLUS_INCLUDE_PATH=/usr/include/gdal
export C_INCLUDE_PATH=/usr/include/gdal

echo "GDAL_HOME=$GDAL_HOME"
bdir=`dirname $0`/build
[ -d $bdir ] && echo "Deleting $bdir ..." && rm -fr $bdir
mkdir build
cd build
cmake .. -DGDAL_INCLUDE_DIR=${GDAL_HOME}/include
make
make install
