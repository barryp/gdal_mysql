#!/bin/sh

#
# Get build and runtime dependencies
#
apt update
apt install -y \
    g++ \
    make \
    libmysqlclient-dev \
    libmysqlclient20 \
    wget \
    unzip

#
# Get and unpack GDAL sourcecode
#
wget http://download.osgeo.org/gdal/2.3.2/gdal-2.3.2.tar.gz
tar xzf gdal-2.3.2.tar.gz
rm gdal-2.3.2.tar.gz

#
# Build with the MySQL driver enabled, this takes a *long* time
#
cd gdal-2.3.2

./configure \
    --with-mysql=/usr/bin/mysql_config

make && make install

#
# Clean up build dependencies and directory
#
cd ..
rm -rf gdal-2.3.2
apt remove -y \
    g++ \
    make \
    libmysqlclient-dev

apt autoremove --purge -y
