#!/usr/bin/env sh
set -e

if [ "$1" = 'molecule' ]; then
  cd ${GITHUB_REPOSITORY}
  exec "$@"
else
  echo "ERROR: Only molecule-commands are accepted!"
fi