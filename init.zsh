#!/bin/zsh

# init sets up the Mac.
export DOTFILE_DIR="${0:a:h}"

# Read secrets used by the installer
if [ -f "$DOTFILE_DIR/secrets.sh" ]; then
  source "$DOTFILE_DIR/secrets.sh"
fi;

# Install homebrew
zsh "$DOTFILE_DIR/brew/install.zsh"

# We might not have brew variables set, so set those
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install rosetta 2
zsh "$DOTFILE_DIR/system/install.zsh"

# Install security tools
zsh "$DOTFILE_DIR/security/install.zsh"

# Set up git
zsh "$DOTFILE_DIR/git/install.zsh"

# Set up GitHub
zsh "$DOTFILE_DIR/github/install.zsh"

# Set up zsh
zsh "$DOTFILE_DIR/zsh/install.zsh"

# Set up kubectl ( :(    )
zsh "$DOTFILE_DIR/kubectl/install.zsh"

# Set up gcloud
zsh "$DOTFILE_DIR/gcloud/install.zsh"

# Set up aws
zsh "$DOTFILE_DIR/aws/install.zsh"

# Set up aws-vault
zsh "$DOTFILE_DIR/aws-vault/install.zsh"

# Set up go
zsh "$DOTFILE_DIR/go/install.zsh"

# Set up node
zsh "$DOTFILE_DIR/node/install.zsh"

# Set up Docker
zsh "$DOTFILE_DIR/docker/install.zsh"
