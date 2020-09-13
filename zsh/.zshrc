# Environment
source "$HOME/.zsh_env"
PATH="$PATH:$HOME/.bin"

# Configure aws-vault to use macos keychain
export AWS_VAULT_BACKEND="keychain"
export AWS_VAULT_KEYCHAIN_NAME="login"

# Source plugins
source "$DOTFILES/zsh/zsh_plugins_compiled.sh"

# Enable completion
autoload -U compinit
compinit -i

# This makes you able to tab through the "menu" of completions
zstyle ':completion:*' menu select

# load every completion after autocomplete loads
if [ "$(ls -A $ZSH_COMPLETION_DIR)" ]; then
  completion_files=($ZSH_COMPLETION_DIR/*.zsh)
  for file in ${completion_files}; do
    source "$file"
  done
fi

# install https://github.com/nvbn/thefuck as "fix"
if command -v "thefuck" > /dev/null; then
  eval $(thefuck --alias fix)
fi

# load every completion after autocomplete loads
source_files=($DOTFILES/**/*.zsh)
for file in ${source_files}; do
  source "$file"
done

# Secret personal stuff
[ -f "$HOME/.localrc" ] && source "$HOME/.localrc"
