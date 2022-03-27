#!/bin/sh
git clone $REP /tmp/crypto
cd /tmp/crypto
git checkout $TAG
./contrib/install_db4.sh /tmp/crypto
./autogen.sh
./configure --disable-tests --disable-bench --disable-ccache --with-gui=no \
BDB_LIBS="-L/tmp/crypto/db4/lib -ldb_cxx-4.8" \
BDB_CFLAGS="-I/tmp/crypto/db4/include"
make -j $(nproc)
make install
rm -rf /tmp/crypto