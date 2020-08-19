#!/usr/bin/env bash
# https://chairnerd.seatgeek.com/practical-vault-usage/
set -e

export VAULT_ADDR=http://127.0.0.1:8200

vault status