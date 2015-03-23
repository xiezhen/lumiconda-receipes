#!/bin/bash

mkdir -vp ${PREFIX}/bin
mkdir -vp ${PREFIX}/root

export LZMA=${PREFIX}
export LIBJPEG=${PREFIX}
export LIBPNG=${PREFIX}
export ZLIB=${PREFIX}
export LIBTIFF=${PREFIX}


ARCH="$(uname 2>/dev/null)"

export XORG=/usr/lib64
if [ "$ARCH" == "Darwin" ];then
    export XORG=/opt/X11/lib
fi

./configure ${ARCH,,*}x8664gcc --nohowto --fail-on-missing \
--enable-table \
--enable-minuit2 \
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
--with-x11-libdir=${XORG} \
--with-xpm-libdir=${XORG} \
--with-xft-libdir=${XORG} \
--with-xext-libdir=${XORG} \
--with-ssl-incdir=${PREFIX}/include/openssl --with-ssl-libdir=${PREFIX}/lib --with-ssl-shared=yes \
--enable-python --with-python-libdir=${PREFIX}/lib --with-python-incdir=${PREFIX}/include/python${PY_VER} 

make CXX="g++" CC="gcc";
#make install;

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
