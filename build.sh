#!/bin/bash

if [ $# -lt 1 ] ; then
    echo "Usage: ./build.sh program"
    exit 0
fi

program=$1
rm -rf build
mkdir build
cd build
echo && echo "Building..." && echo
cmake ../$program
make
echo && echo "You can now run <<build/$program>>" && echo

