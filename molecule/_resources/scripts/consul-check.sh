#!/usr/bin/env bash
# https://chairnerd.seatgeek.com/practical-vault-usage/
set -e

export CONSUL_HTTP_ADDR=http://127.0.0.1:8500

consul catalog services