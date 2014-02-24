#!/bin/bash

./configure --prefix=$PREFIX
make
make install

rm -rf ${PREFIX}/man
rm -rf ${PREFIX}/bin

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
