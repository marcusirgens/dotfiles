#!/bin/sh
set -eu;

fishcfg="$(fish -c 'printf "$__fish_config_dir"')"
kubectl completion fish > "$fishcfg/completions/kubectl.fish";
