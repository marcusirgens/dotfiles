#!/bin/zsh

reinstall-dotfiles () {
  if [ -f "$HOME/.zshrc.bak" ]; then
    rm "$HOME/.zshrc.bak";
  fi;
  zsh "$DOTFILES/script/install"
}
