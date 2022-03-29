#!/bin/sh
apk add --no-cache git make go
git clone https://github.com/ethereum/go-ethereum.git \
  --branch v1.10.16 --single-branch /tmp/ethereum
cd /tmp/ethereum


apk del git make