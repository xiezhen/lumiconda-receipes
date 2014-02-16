#!/bin/bash

${SRC_DIR}/buildcoral.sh CORAL_2_3_28

cd ${SRC_DIR}/CORAL_2_3_28

make ORACLEINC="${PREFIX}/include" ORACLELIB="${PREFIX}/lib" XERCESINC="${PREFIX}/include/xercesc" XERCESLIB="${PREFIX}/lib" SQLITEINC="${PREFIX}/include" SQLITELIB="${PREFIX}/lib" FRONTIERINC="${PREFIX}/include" FRONTIERLIB="${PREFIX}/lib"  
make PREFIX="${PREFIX}" install

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
