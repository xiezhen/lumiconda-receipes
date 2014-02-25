#!/bin/bash
mkdir -p $PREFIX/lib
/bin/cp /usr/lib64/libXext.so.6.4.0 $PREFIX/lib
/bin/ln -s libXext.so.6.4.0 $PREFIX/lib/libXext.so.6
/bin/ln -s libXext.so.6.4.0 $PREFIX/lib/libXext.so
