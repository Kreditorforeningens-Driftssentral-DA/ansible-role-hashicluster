#!/usr/bin/env bash
# https://chairnerd.seatgeek.com/practical-vault-usage/
set -e

export VAULT_ADDR=http://127.0.0.1:8200
export VAULT_SECRET=/tmp/vault-key.json

# Check if vault is initialized;
# if not, then initialize, unseal & store secrets to file
if [ -f $VAULT_SECRET ]; then
  printf " INFO: Vault is already initialized! \n\n"
else
  printf " INFO: Initializing Vault.. \n\n"
  vault operator init -key-shares=1 -key-threshold=1 -format=json > $VAULT_SECRET
  chmod 0400 $VAULT_SECRET
  jq -r '.unseal_keys_b64[0]' $VAULT_SECRET | xargs vault operator unseal
fi

# Login to vault
printf " INFO: Logging in to vault.. \n\n"
jq -r '.root_token' $VAULT_SECRET | xargs vault login

# List secrets
printf " INFO: Listing secrets.. \n\n"
vault secrets list
