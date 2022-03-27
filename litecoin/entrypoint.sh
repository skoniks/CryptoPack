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
mkdir -p /root/wallets
mkdir -p /var/blockchain
/usr/local/bin/litecoind \
-conf=/root/config.conf \
-walletdir=/root/wallets \
-datadir=/var/blockchain