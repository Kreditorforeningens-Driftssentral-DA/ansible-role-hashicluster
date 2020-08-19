#!/usr/bin/env sh
set -e

# VALIDATE INPUT
if [ "$1" = 'molecule' ]; then
  cd ${GITHUB_REPOSITORY}
  exec "$@"
else
  echo "ERROR: Only molecule-commands are accepted!"
fi

#echo "::set-output name=example::value-here"