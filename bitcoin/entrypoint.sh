#!/bin/sh
mkdir -p /root/wallets
mkdir -p /var/bitcoin
/usr/local/bin/bitcoind \
  -conf=/root/bitcoin.conf \
  -walletdir=/root/wallets \
  -datadir=/var/bitcoin