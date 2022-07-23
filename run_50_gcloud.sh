#!/bin/sh
set -eu;

if ! command -v gcloud > /dev/null; then
  exit
fi
# Install plugins
# Google Kubernetes auth
compinst=$(gcloud components install --quiet gke-gcloud-auth-plugin 2>&1)
if [ $? -ne 0 ]; then
  echo >&2 "GCloud component install:$compinst"
fi