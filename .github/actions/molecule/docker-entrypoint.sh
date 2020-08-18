#!/usr/bin/env sh
set -e

env

ansible --version
molecule --version

# SET ENVIRONMENT
# ${GITHUB_REPOSITORY}
#export ANSIBLE_ROLES_PATH=/tmp
#export ROLE_PATH=/tmp/$(basename ${GITHUB_REPOSITORY})
#ansible-galaxy role list --roles-path .

# LINK REPO TO ROLES PATH
#ln -fs `pwd` ${ROLE_PATH}
#ls -lts /tmp

# VALIDATE INPUT
if [ "$1" = 'molecule' ]; then
  cd ${GITHUB_REPOSITORY}
  exec "$@"
else
  echo "ERROR: Only molecule-commands are accepted!"
fi

#echo "::set-output name=example::value-here"