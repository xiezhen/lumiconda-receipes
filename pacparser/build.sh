#!/bin/bash

make -C src PREFIX="${PREFIX}"
make -C src install PREFIX="${PREFIX}"
rm -rf ${PREFIX}/share
# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
