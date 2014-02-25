#!/bin/bash
mkdir -p $PREFIX/lib
/bin/cp /usr/lib64/libXpm.so.4.11.0 $PREFIX/lib
/bin/ln -s libXpm.so.4.11.0 $PREFIX/lib/libXpm.so.4
/bin/ln -s libXpm.so.4.11.0 $PREFIX/lib/libXpm.so

#mkdir -p $PREFIX/include/X11
#/bin/cp /usr/include/X11/xpm.h $PREFIX/include/X11
