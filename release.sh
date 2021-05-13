#!/bin/sh

DIR="release_build/"
if [ -d "$DIR" ]; then
    echo "release_build directory exists, deleting..."
  rm -r release_build
fi

mkdir release_build
cd release_build || exit
cmake -DCMAKE_BUILD_TYPE=Release ..
make -j4
./opengl_tutorial