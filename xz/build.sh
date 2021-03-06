#!/bin/bash

./configure CC=gcc CFLAGS='-fPIC -O2' --prefix=${PREFIX} --disable-static
make
make install
rm -rf ${PREFIX}/share
rm -rf ${PREFIX}/bin

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
