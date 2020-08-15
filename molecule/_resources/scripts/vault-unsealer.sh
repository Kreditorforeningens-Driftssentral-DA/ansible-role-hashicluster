#!/usr/bin/env bash
set -e

export VAULT_ADDR=http://127.0.0.1:8200
export VAULT_SECRET=/tmp/vault-key.json

export VAULT_INIT=`vault status -format=json | jq -r '.initialized'`
if $VAULT_INIT; then
  printf "Vault already initialized\n"
else
  printf "Initializing vault\n"
  vault operator init -key-shares=1 -key-threshold=1 -format=json > $VAULT_SECRET
fi

export VAULT_SEALED=`vault status -format=json | jq -r '.sealed'`
if $VAULT_SEALED; then
  if [ -f $VAULT_SECRET ]; then
    printf "Unsealing vault\n"
    jq -r '.unseal_keys_b64[0]' $VAULT_SECRET | xargs vault operator unseal
  else
    printf "Unable to unseal; secret-file missing\n"
  fi
else
  printf "Vault already unsealed\n"
fi

# Login to vault
# jq -r '.root_token' $VAULT_SECRET | xargs vault login
#
# Create administrator token
# vault token create -metadata "name=ADMIN" -display-name="ADMINISTRATOR" -orphan -no-default-policy

