#!/bin/bash
mkdir -p $PREFIX/lib
/bin/cp /usr/lib64/libX11.so.6.3.0 $PREFIX/lib
/bin/ln -s libX11.so.6.3.0 $PREFIX/lib/libX11.so.6
/bin/ln -s libX11.so.6.3.0 $PREFIX/lib/libX11.so

#mkdir -p $PREFIX/include/X11
#/bin/cp /usr/include/X11/Xlib.h $PREFIX/include/X11