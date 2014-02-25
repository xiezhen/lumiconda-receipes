#!/bin/bash

export LZMA=${PREFIX}
export LIBJPEG=${PREFIX}
export LIBPNG=${PREFIX}
export ZLIB=${PREFIX}
export LIBTIFF=${PREFIX}

./configure linuxx8664gcc --nohowto --fail-on-missing \
--enable-table \
--enable-asimage \
--enable-minuit2 \
--enable-astiff \
--enable-x11 \
--enable-xft \
--disable-builtin-lzma \
--disable-builtin-freetype \
--disable-builtin-glew \
--disable-builtin-pcre \
--disable-builtin-zlib \
--enable-builtin-afterimage \
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
--disable-bonjour \
--disable-ldap \
--disable-krb5 \
--disable-xrootd \
--disable-odbc \
--disable-sqlite \
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
--disable-unuran \
--disable-vc \
--disable-xml \
--with-cxx=g++ \
--with-cc=gcc \
--with-ld=g++ \
--with-x11-libdir=$PREFIX/lib \
--with-xpm-libdir=$PREFIX/lib \
--with-xft-libdir=$PREFIX/lib \
--with-xext-libdir=$PREFIX/lib \
--with-ssl-incdir=${PREFIX}/include --with-ssl-libdir=${PREFIX}/lib \
--enable-python --with-python-libdir=${PREFIX}/lib --with-python-incdir=${PREFIX}/include/python${PY_VER}

make CXX="g++" CC="gcc"

mkdir -vp ${PREFIX}/root
cp -rf ${SRC_DIR}/bin ${PREFIX}/root
cp -rf ${SRC_DIR}/include ${PREFIX}/root
cp -rf ${SRC_DIR}/lib ${PREFIX}/root
cp -rf ${SRC_DIR}/icons ${PREFIX}/root
cp -rf ${SRC_DIR}/fonts ${PREFIX}/root
cp -rf ${SRC_DIR}/macros ${PREFIX}/root
cp -rf ${SRC_DIR}/etc ${PREFIX}/root

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
