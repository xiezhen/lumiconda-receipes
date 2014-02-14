#!/bin/bash

export XERCESCROOT=$SRC_DIR
cd src/xercesc
./runConfigure -P$PREFIX -b 64 -plinux -cgcc -xg++ 
make 
make install

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
