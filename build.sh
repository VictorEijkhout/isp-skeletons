#!/bin/bash

if [ $# -lt 1 ] ; then
    echo "Usage: ./build.sh program"
    echo "  use cmake to build the program"
    echo "Usage: ./build.sh -a"
    echo "  build all programs"
    exit 0
fi

if [ "$1" = "-a" ] ; then
    for d in * ; do
	if [ -d "$d" -a -f "$d/CMakeLists.txt" ] ; then
	    ## build this code
	    ./$0 "$d"
	    ## record failures
	    if [ $? -ne 0 ] ; then
		if [ -z "$fail" ] ; then
		    fail=$d
		else
		    fail="${fail} $d"
		fi
	    fi
	fi
    done
    if [ ! -z "$fail" ] ; then
	echo && echo "Failed builds: $fail" && echo
    fi
else

    program=$1
    rm -rf build
    mkdir build
    cd build
    echo && echo "Building..." && echo
    cmake ../$program
    if [ $? -ne 0 ] ; then
	echo && echo "Cmake failed" && echo && exit 1 ; fi
    make
    if [ $? -ne 0 ] ; then
	echo && echo "Make failed" && echo && exit 1 ; fi
    echo && echo "You can now run <<build/$program>>" && echo

fi
