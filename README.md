# find_inlets
## Compile on Ubuntu 18.04
'''
apt install build-essential libgdal-dev

gdal-config --cflags
-I/opt/conda/include

gdal-config --libs
-L/opt/conda/lib -lgdal

g++ find_inlets.cpp -I/usr/include/gdal -L/usr/lib -lgdal -o find_inlets_mr

cp find_inlets_mr /usr/bin/
'''
