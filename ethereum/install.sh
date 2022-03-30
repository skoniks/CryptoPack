#!/bin/sh
apk add --no-cache git make go linux-headers
git clone https://github.com/ethereum/go-ethereum.git \
  --branch v1.10.16 --single-branch /tmp/ethereum
cd /tmp/ethereum
make geth -j $(nproc)
cp ./build/bin/geth /usr/local/bin/
apk del git make go linux-headers
rm /tmp/ethereum/ -r


mkdir -p /var/blockchain
geth --syncmode light --http --datadir /var/blockchain

curl -X POST http://127.0.0.1:8545 \
-H "Content-Type: application/json" \
--data '{"jsonrpc":"2.0", "method":"eth_accounts","params":[], "id":1}'