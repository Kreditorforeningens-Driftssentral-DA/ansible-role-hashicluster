#!/usr/bin/env sh
set -e

export ROLE_PATH=/tmp/$(basename ${GITHUB_REPOSITORY})
export ANSIBLE_ROLES_PATH=/tmp

ln -fs `pwd` ${ROLE_PATH}
cd ${ROLE_PATH}

# VALIDATE INPUT
if [ "$1" = 'molecule' ]; then
  ansible --version
  molecule --version
  exec "$@"
else
  echo "ERROR: Only molecule-commands are accepted"
fi

#echo "::set-output name=example::value-here"