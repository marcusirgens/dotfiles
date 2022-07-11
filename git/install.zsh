set -eu;

GIT_DIR="$DOTFILE_DIR/git"
GITIGNORE="$HOME/.config/git/ignore"

brew bundle --no-upgrade --no-lock --file "$GIT_DIR/Brewfile"

function gcg() {
  git config --global $@
}

# Set git configs
gcg user.name "Marcus Pettersen Irgens"
gcg user.email "m@mrcus.dev"
gcg init.defaultBranch "main"

# Use difftastic for great diffs
gcg diff.external difft

# Create a global gitignore if missing
[ -d "$(dirname "$GITIGNORE")" ] || mkdir -p "$(dirname "$GITIGNORE")"
[ -f "$GITIGNORE" ] || touch "$GITIGNORE"

# Add missing lines only to gitignore
# Sort the files and stash them to a temp dir
GITIGNORE_CMP_DIR="$(mktemp -d)"
cat "$GIT_DIR/gitignore" | sort > "$GITIGNORE_CMP_DIR/want"
cat "$GITIGNORE" | sort > "$GITIGNORE_CMP_DIR/got"
# Compare and add missing lines to gitignore
comm -23 "$GITIGNORE_CMP_DIR/want" "$GITIGNORE_CMP_DIR/got" >> "$GITIGNORE"
rm -rf "$GITIGNORE_CMP_DIR"

# Enable commit signing.
if [ ! -z "$GPG_KEY_ID" ]; then
  gcg user.signingkey "$GPG_KEY_ID"
  gcg commit.gpgsign true
fi;
