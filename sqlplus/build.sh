#!/bin/bash
mkdir -vp  $PREFIX/bin
mkdir -vp  $PREFIX/lib

cp $SRC_DIR/libsqlplus.so $PREFIX/lib
cp $SRC_DIR/sqlplus $PREFIX/bin

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
