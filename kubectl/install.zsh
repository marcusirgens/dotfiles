KUBECTL_DIR="$DOTFILE_DIR/kubectl"

brew bundle --no-upgrade --no-lock --file "$KUBECTL_DIR/Brewfile"

zsh "$KUBECTL_DIR/krewinstall.zsh"

# We need to know where to put completions
source "$DOTFILE_DIR/zsh/globals.zsh"
[ -d "$ZSH_COMPLETION_DIR" ] || mkdir -p "$ZSH_COMPLETION_DIR"

kubectl completion zsh > "$ZSH_COMPLETION_DIR/_kubectl"

if [ -d "$HOME/.krew" ]; then
  # set up completions for krew ?
  KREWCMD="$HOME/.krew/bin/kubectl-krew"
  "$KREWCMD" completion zsh > "$ZSH_COMPLETION_DIR/_krew"

  # install some plugins
  "$KREWCMD" install ns stern ctx
fi

