#!/usr/bin/env sh
#set -e

export ROLE_PATH=/tmp/$(basename ${GITHUB_REPOSITORY})

env

ln -fs `pwd` ${ROLE_PATH}
cd ${ROLE_PATH}

ls -lts

molecule --version
ansible --version

#time=$(date)
#echo "::set-output name=time::$time"