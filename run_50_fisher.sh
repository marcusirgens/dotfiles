#!/bin/sh
# Installs the Fisher plugin manager for fish.

set -eu;

# Nop if fish is not installed
if ! command -v fish > /dev/null; then
  exit;
fi

# Get fish's config dir
fishcfg="$(fish -c 'printf "$__fish_config_dir"')"

# Install fisher if not present
if [ ! -f "$fishcfg/functions/fisher.fish" ]; then
    fish -c 'curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher'
fi

# Use fisher to update plugins
fish -c 'fisher update'