#!/bin/bash

./configure --prefix=$PREFIX
make
make install

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
