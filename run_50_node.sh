#!/bin/sh
set -eu;

if command -v n > /dev/null; then
  n install lts --quiet --download
  n install latest --quiet --download
fi