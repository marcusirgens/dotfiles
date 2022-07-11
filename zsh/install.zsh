ZSH_DIR="$DOTFILE_DIR/zsh"

# mirrored from zshrc
source "$ZSH_DIR/globals.zsh"

brew bundle --no-upgrade --no-lock --file "$ZSH_DIR/Brewfile"

# Set up the DOTFILE_DIR variable
[ -f "$HOME/.zprofile" ] || touch "$HOME/.zprofile"
if ! grep -i "export DOTFILE_DIR" -q ~/.zprofile; then
  echo "export DOTFILE_DIR=\"$DOTFILE_DIR\"" >> ~/.zprofile
fi

# Source zprofile
[ -f "$HOME/.zprofile" ] || touch "$HOME/.zprofile"
if ! grep -i -E '^source.*zsh\/zprofile.*$' -q ~/.zprofile; then
  echo "source \"\$DOTFILE_DIR/zsh/zprofile\"" >> ~/.zprofile
fi

# Source zshrc
[ -f "$HOME/.zshrc" ] || touch "$HOME/.zshrc"
if ! grep -i -E '^source.*zsh\/zshrc.*$' -q ~/.zshrc; then
  echo "source \"\$DOTFILE_DIR/zsh/zshrc\"" >> ~/.zshrc
fi

# Install the syntax highlighting plugin
zsh "$ZSH_DIR/highlighting.zsh"

source "$ZSH_FUNCTIONS/antibody.zsh"
antibody-rebundle

# Forcefully recreate completions
[ ! -f "$HOME/.zcompdump" ] || rm -f "$HOME/.zcompdump"
