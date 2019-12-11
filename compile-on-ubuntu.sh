# Tested on Ubuntu 18.04
# apt install build-essential
# apt install libgdal-dev

flags=$(/usr/bin/gdal-config --cflags)
echo $flags
libs=$(/usr/bin/gdal-config --libs)
echo $libs

bdir=`dirname $0`/build
[ -d $bdir ] && echo "Deleting $bdir ..." && rm -fr $bdir
mkdir build
cd src
g++ find_inlets.cpp -o ../build/find_inlets_mr $flags $libs
g++ find_inlets_hr.cpp -o ../build/find_inlets_hr $flags $libs
ls ../build
cp ../build/* /usr/bin/
