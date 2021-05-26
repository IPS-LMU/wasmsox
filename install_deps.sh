#!/bin/bash

npm install

# activate emsdk
source ../emsdk/emsdk_env.sh

# install get sox and compile
# 
git clone git://git.code.sf.net/p/sox/code sox
cd sox
# checkout release using tag
git checkout sox-14.4.1
# delete line 420 as it is not neaded
# as we don't need file-type detection with pipes
sed -i '/\w*#error FIX NEEDED HERE/d' src/formats.c

autoreconf -i
# configure & make
emconfigure ./configure
emmake make -s
# install in sox/local_install_dir/usr/local|bin
wd=$(pwd)
emmake make DESTDIR="$wd/local_install_dir" install