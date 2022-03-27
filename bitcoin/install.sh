#!/bin/sh
git clone ${REP} /tmp/bitcoin
cd /tmp/bitcoin
git checkout ${TAG}
./contrib/install_db4.sh /tmp/bitcoin
./autogen.sh
./configure --disable-tests --disable-bench --disable-ccache --with-gui=no \
  BDB_LIBS="-L/tmp/bitcoin/db4/lib -ldb_cxx-4.8" \
  BDB_CFLAGS="-I/tmp/bitcoin/db4/include"
make -j $(nproc)
make install
rm -rf /tmp/bitcoin