#!/bin/sh
set -eu;

# only if GH is installed.
if ! command -v gh > /dev/null; then
  exit
fi

# Get fish's config dir
fishcfg="$(fish -c 'printf "$__fish_config_dir"')"

gh completion --shell fish > "$fishcfg/completions/gh.fish";
