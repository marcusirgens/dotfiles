function dotfiles-reinstall() {
  [ ! -z "$DOTFILE_DIR" ] || (echo "DOTFILE_DIR not set" && exit 1)
  zsh "$DOTFILE_DIR/init.zsh"
}