set -eu;

GITHUB_DIR="$DOTFILE_DIR/github"

brew bundle --no-upgrade --no-lock --file "$GITHUB_DIR/Brewfile"

# Read secrets used by the installer
if [ -f "$DOTFILE_DIR/secrets.sh" ]; then
  source "$DOTFILE_DIR/secrets.sh"
fi;

if [ ! -z "$GITHUB_TOKEN_REF" ]; then
  op read "$GITHUB_TOKEN_REF" | gh auth login --with-token
fi
