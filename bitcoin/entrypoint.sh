#!/bin/sh
echo "listen=0
port=$PORT
prune=$PRUNE
server=1
rpcuser=$RPC_USER
rpcpassword=$RPC_PASS
rpcbind=0.0.0.0
rpcport=$RPC_PORT
rpcallowip=0.0.0.0/0" \
> /root/config.conf

echo "BIN - $BIN"
echo "RPC_PORT - $RPC_PORT"

mkdir -p /root/wallets
mkdir -p /var/blockchain
/usr/local/bin/$BIN \
-conf=/root/config.conf \
-walletdir=/root/wallets \
-datadir=/var/blockchain