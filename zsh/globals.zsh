# "global" variables.

[ ! -z "$DOTFILE_DIR" ] || (echo "DOTFILE_DIR not set" && exit 1)

export ZSH_PLUGIN_DIR="$HOME/.zsh_plugins"
export ZSH_COMPLETION_DIR="$HOME/.zsh_completions"
export ZSH_FUNCTIONS="$DOTFILE_DIR/zsh/functions/"
