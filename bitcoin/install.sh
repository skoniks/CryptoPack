#!/bin/sh
apk add --no-cache git make file autoconf automake build-base \
  boost boost-dev libtool libressl-dev libevent libevent-dev
git clone https://github.com/bitcoin/bitcoin.git \
  --branch v0.21.1 --single-branch /tmp/bitcoin
cd /tmp/bitcoin
./contrib/install_db4.sh /tmp/bitcoin
./autogen.sh
./configure --disable-tests --disable-bench --disable-static \
  --without-gui --disable-zmq CFLAGS='-w' CXXFLAGS='-w' \
  BDB_LIBS="-L/tmp/bitcoin/db4/lib -ldb_cxx-4.8" \
  BDB_CFLAGS="-I/tmp/bitcoin/db4/include"
make -j $(nproc)
strip ./src/bitcoind
strip ./src/bitcoin-wallet
strip ./src/bitcoin-cli
strip ./src/bitcoin-tx
make install
apk del git make file autoconf automake build-base \
  boost-dev libtool libressl-dev libevent-dev
rm /tmp/bitcoin/ -r