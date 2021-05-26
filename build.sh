#!/bin/bash

source ../emsdk/emsdk_env.sh

emcc -O3 -s WASM=1 -s EXPORTED_RUNTIME_METHODS='["cwrap"]' \
    performSox.c \
    sox/local_install_dir/usr/local/lib/libsox.a \
    -I sox/src \
    -o ./wasmsox.js \
    --emrun