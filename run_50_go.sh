#!/bin/sh
set -eu;

if ! command -v go > /dev/null; then
  exit
fi

if ! command -v godoc > /dev/null; then
  go install golang.org/x/tools/cmd/godoc@latest
fi