set -eu;

SECURITY_DIR="$DOTFILE_DIR/security"

brew bundle --no-upgrade --no-lock --file "$SECURITY_DIR/Brewfile"

zsh "$SECURITY_DIR/gpg_key.zsh"
