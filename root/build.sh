#!/bin/bash

# Add support for GCC 4.6
sed -ibak 's/\-std=c++11/-std=c++0x/g' \
  configure \
  Makefile \
  config/Makefile.macosx64 \
  config/Makefile.macosx \
  config/Makefile.linux \
  config/root-config.in \
  config/Makefile.linuxx8664gcc 

export LZMA=${PREFIX}
export LIBJPG_ROOT=${PREFIX}
export LIBPNG_ROOT=${PREFIX}
export ZLIB_ROOT=${PREFIX}
export LIBTIFF_ROOT=${PREFIX}
export LIBUNGIF_ROOT=${PREFIX}
export ROOTSYS=${PREFIX}

./configure linuxx8664gcc --prefix=${PREFIX} \
--enable-table \
--enable-minuit2 \
--disable-builtin-lzma \
--disable-castor \
--disable-chirp \
--disable-cocoa \
--disable-cxx11 \
--disable-libcxx \
--disable-davix \
--disable-dcache \
--disable-fink \
--disable-fftw3 \
--disable-fitsio \
--disable-gviz \
--disable-geocad \
--disable-gdml \
--disable-gfal \
--disable-globus \
--disable-glite \
--disable-hdfs \
--disable-genvector \
--disable-mathmore \
--disable-memstat \
--disable-monalisa \
--disable-afdsmgrd \
--disable-afs \
--disable-alien \
--disable-asimage \
--disable-bonjour \
--disable-ldap \
--disable-krb5 \
--disable-xrootd \
--disable-odbc \
--disable-astiff \
--disable-pgsql \
--disable-mysql \
--disable-pythia6 \
--disable-pythia8 \
--disable-opengl \
--disable-qt \
--disable-qtgsi \
--disable-oracle \
--disable-rfio \
--disable-roofit \
--disable-ruby \
--disable-srp \
--disable-sapdb \
--disable-winrtdebug \
--disable-tmva \
--disable-xft \
--disable-unuran \
--with-cxx=g++ \
--with-cc=gcc \
--with-ld=g++ \
--gminimal \
--with-ssl-incdir=${PREFIX}/include --with-ssl-libdir=${PREFIX}/lib \
--enable-python --with-python-libdir=${PREFIX}/lib --with-python-incdir=${PREFIX}/include/python${PY_VER} 

make -j 8 CXX="g++" CC="gcc"

make install

mv ${PREFIX}/lib/root/libPyROOT.so  ${PREFIX}/lib/python${PY_VER}/

find ${PREFIX}/lib/root -name "*.py*" -print | while read filename
do
   mv "${filename}" ${PREFIX}/lib/python${PY_VER}/
done

find ${PREFIX}/lib/root -name "*libProof*" -print | while read filename
do
    rm "${filename}"
done

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
