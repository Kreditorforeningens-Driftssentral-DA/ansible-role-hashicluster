#!/usr/bin/env bash
# https://chairnerd.seatgeek.com/practical-vault-usage/
#set -e

export VAULT_ADDR=http://127.0.0.1:8200
export VAULT_SECRET=/tmp/vault-key.json

if [ -n "$(command -v yum)" ]; then
  yum -y install jq which
fi

if [ -n "$(command -v apt-get)" ]; then
  apt-get -qy install jq
fi

if [ -f $VAULT_SECRET ]; then
   echo "Vault already initialized!"
else
  `which vault` operator init -key-shares=1 -key-threshold=1 -format=json > $VAULT_SECRET
  chmod 0400 $VAULT_SECRET
  jq -r '.unseal_keys_b64[0]' $VAULT_SECRET | xargs `which vault` operator unseal
fi

jq -r '.root_token' $VAULT_SECRET | xargs `which vault` login
`which vault` secrets list

#`which vault` operator seal