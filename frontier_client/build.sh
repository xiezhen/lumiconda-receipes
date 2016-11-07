#!/bin/bash

GCCVERSION=`gcc -dumpversion`

make EXPAT_DIR="${PREFIX}" ZLIB_DIR="${PREFIX}" PACPARSER_DIR="${PREFIX}" OPENSSL_DIR="${PREFIX}" COMPILER_TAG="gcc_${GCCVERSION}" distdir="${PREFIX}" dist

rm ${PREFIX}/RELEASE_NOTES

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
