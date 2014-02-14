#!/bin/bash

# Hints:
# http://boost.2283326.n4.nabble.com/how-to-build-boost-with-bzip2-in-non-standard-location-td2661155.html
# http://www.gentoo.org/proj/en/base/amd64/howtos/?part=1&chap=3

# Build dependencies:
# - bzip2-devel

export CFLAGS="-m64 -pipe -O2 -march=x86-64 -fPIC -shared"
export CXXFLAGS="${CFLAGS}"

./bootstrap.sh --prefix="${PREFIX}/";
./b2  -d0 -a \
--without-iostreams \
--without-locale \
--without-python \
--without-mpi \
--without-math \
--without-wave \
--without-graph \
--without-graph_parallel \
--without-test \
threading=multi \
install;

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
