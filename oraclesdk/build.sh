#!/bin/bash
mkdir -vp  ${PREFIX}/include

cp -r ${SRC_DIR}/sdk/include/. ${PREFIX}/include

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
