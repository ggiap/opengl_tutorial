#!/bin/sh

DIR="build/"
if [ -d "$DIR" ]; then
    echo "build directory exists, deleting..."
  rm -r build
fi

mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
make -j4