#!/bin/bash
mkdir -vp  $PREFIX/lib

cp $SRC_DIR/libclntsh.so.11.1 $PREFIX/lib
cp $SRC_DIR/libnnz11.so $PREFIX/lib

cd $PREFIX/lib
ln -s libclntsh.so.11.1 libclntsh.so

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
