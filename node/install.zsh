NODE_DIR="$DOTFILE_DIR/node"

brew bundle --no-upgrade --no-lock --file "$NODE_DIR/Brewfile"

# Ensure we have at least the LTS versions.
source "$NODE_DIR/conf.zsh"

# install at least the LTS version.
if (command -v n > /dev/null); then
  n install lts
  n install latest
fi