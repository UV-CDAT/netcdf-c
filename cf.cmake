#!/bin/bash

CPPATH="t:/cygwin/usr/local"

rm -fr build
mkdir build
cd build

FLAGS="-DCMAKE_PREFIX_PATH=${CPPATH}"
FLAGS="$FLAGS -DCMAKE_INSTALL_PREFIX=${PREFIX}"
FLAGS="$FLAGS -DBUILD_SHARED_LIBS=ON"
FLAGS="$FLAGS -DENABLE_DAP_REMOTE_TESTS=true"
#FLAGS="$FLAGS -DENABLE_DAP_AUTH_TESTS=true"
FLAGS="$FLAGS -DZLIB_LIBRARY=${CPPPATH}/lib/libzlib.dll.a"
FLAGS="$FLAGS -DCURL_LIBRARY=${CPPPATH}/lib/libcurl.dll.a"

cmake $FLAGS ..
cmake --build .
cmake --build --target test

