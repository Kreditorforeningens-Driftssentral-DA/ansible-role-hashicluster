#!/usr/bin/env sh
set -e

cd ${GITHUB_REPOSITORY}

# TODO: Validate command(s)
if [ "$1" = 'molecule' ]; then
  exec "$@"
else
  echo "ERROR: Only molecule-commands are accepted!"
fi
