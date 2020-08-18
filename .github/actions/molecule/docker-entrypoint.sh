#!/usr/bin/env sh
set -e

env
pwd
ls -lts

ln -s `pwd` "/tmp/${GITHUB_REPOSITORY}"
cd "/tmp/${GITHUB_REPOSITORY}"
ls -lts
molecule --version \
ansible --version
