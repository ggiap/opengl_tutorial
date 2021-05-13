#!/bin/sh

DIR="debug_build/"
if [ -d "$DIR" ]; then
    echo "debug_build directory exists, deleting..."
  rm -r debug_build
fi

mkdir debug_build
cd debug_build || exit
cmake -DCMAKE_BUILD_TYPE=Debug ..
make -j4
./opengl_tutorial