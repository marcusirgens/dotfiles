function antibody-rebundle() {
  cat "$DOTFILE_DIR/zsh/plugins.txt" | antibody bundle > "$ZSH_PLUGIN_DIR/plugins.zsh"
}