#!/bin/bash
mkdir -p $PREFIX/lib
/bin/cp /usr/lib64/libXft.so.2.1.13 $PREFIX/lib
/bin/ln -s libXft.so.2.1.13 $PREFIX/lib/libXft.so.2
/bin/ln -s libXft.so.2.1.13 $PREFIX/lib/libXft.so
#mkdir -p $PREFIX/include/X11/Xft
#/bin/cp /usr/include/X11/Xft/Xft.h $PREFIX/include/X11/Xft
