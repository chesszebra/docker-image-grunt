#!/usr/bin/env bash

# check if the first argument passed in looks like a flag
if [ "$1" = "grunt" ]; then
  set -- /sbin/tini -- "$@"
fi

exec "$@"
