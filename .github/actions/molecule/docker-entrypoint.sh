#!/usr/bin/env sh
set -e

# SET ENVIRONMENT
export ANSIBLE_ROLES_PATH=/tmp
export ROLE_PATH=/tmp/$(basename ${GITHUB_REPOSITORY})

# LINK REPO TO ROLES PATH
ln -fs `pwd` ${ROLE_PATH}
cd ${ROLE_PATH}

ansible --version
molecule --version

# VALIDATE INPUT
if [ "$1" = 'molecule' ]; then
  #ansible-galaxy role list --roles-path .
  exec "$@"
else
  echo "ERROR: Only molecule-commands are accepted!"
fi

#echo "::set-output name=example::value-here"