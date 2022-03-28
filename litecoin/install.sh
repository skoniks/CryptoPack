#!/bin/sh
apk add --no-cache git make file autoconf automake build-base \
  boost boost-dev libtool libressl libressl-dev libevent libevent-dev
git clone https://github.com/litecoin-project/litecoin.git \
  --branch v0.18.1 --single-branch /tmp/litecoin
cd /tmp/litecoin
./contrib/install_db4.sh /tmp/litecoin
./autogen.sh
./configure --disable-tests --disable-bench --disable-static \
  --without-gui --disable-zmq CFLAGS='-w' CXXFLAGS='-w' \
  BDB_LIBS="-L/tmp/litecoin/db4/lib -ldb_cxx-4.8" \
  BDB_CFLAGS="-I/tmp/litecoin/db4/include"
sed -i '/char\ scratchpad\[SCRYPT_SCRATCHPAD_SIZE\];/a\memset(scratchpad, 0, sizeof(scratchpad));' ./src/crypto/scrypt.cpp
sed -i 's/char\ scratchpad\[SCRYPT_SCRATCHPAD_SIZE\];/static &/g' ./src/crypto/scrypt.cpp
make -j $(nproc)
strip ./src/litecoind
strip ./src/litecoin-wallet
strip ./src/litecoin-cli
strip ./src/litecoin-tx
make install
apk del git make file autoconf automake build-base \
  boost-dev libtool libressl-dev libevent-dev
rm /tmp/litecoin/ -r