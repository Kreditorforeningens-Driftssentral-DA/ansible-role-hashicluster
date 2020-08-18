#!/usr/bin/env sh
set -e

ln -s /github/workspace /tmp/$GITHUB_REPOSITORY
cd /tmp/$GITHUB_REPOSITORY
ls -lts
molecule --version \
ansible --version
