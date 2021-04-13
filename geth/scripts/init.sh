#!/bin/sh

set -eu

rm -rf .ethereum

geth init /root/config/genesis.json
geth account import /root/config/private-key.txt --password /root/config/password.txt
