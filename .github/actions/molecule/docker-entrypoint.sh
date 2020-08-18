#!/usr/bin/env sh
#set -e

molecule --version
ansible --version

ln -fs `pwd` /tmp/${GITHUB_REPOSITORY}
ls -lts cd /tmp/${GITHUB_REPOSITORY}

cd /tmp/${GITHUB_REPOSITORY}

#time=$(date)
#echo "::set-output name=time::$time"