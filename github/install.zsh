# Fetch common functions
source "$DOTFILE_DIR/install/functions.zsh"

set -eu;

GITHUB_DIR="$DOTFILE_DIR/github"

brew bundle --no-upgrade --no-lock --file "$GITHUB_DIR/Brewfile"

# Read secrets used by the installer
if [ -f "$DOTFILE_DIR/secrets.sh" ]; then
  source "$DOTFILE_DIR/secrets.sh"
fi;

if [ ! -z "$GITHUB_TOKEN_REF" ]; then
  echobox "1password will now attempt to authenticate to get your GitHub token."
  op read "$GITHUB_TOKEN_REF" | gh auth login --with-token
fi
