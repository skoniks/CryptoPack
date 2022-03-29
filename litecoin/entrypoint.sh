#!/bin/sh
echo "listen=0
port=9333
prune=$PRUNE
server=1
rpcuser=$RPC_USER
rpcpassword=$RPC_PASS
rpcbind=0.0.0.0
rpcport=9332
rpcallowip=0.0.0.0/0" \
  > /root/config.conf
mkdir -p /root/wallets
mkdir -p /root/backups
mkdir -p /var/blockchain
/usr/local/bin/litecoind \
  -conf=/root/config.conf \
  -walletdir=/root/wallets \
  -datadir=/var/blockchain