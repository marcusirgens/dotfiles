#!/bin/sh
set -eu;

if command -v mkcert > /dev/null; then
  inst=$(mkcert -install 2>&1)
  if [ $? -ne 0 ]; then
    echo >&2 "$inst"
  fi

fi