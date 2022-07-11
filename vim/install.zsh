VIM_DIR="$DOTFILE_DIR/vim"

# Just installing vim via brew adds a lot of good stuff
brew bundle --no-upgrade --no-lock --file "$VIM_DIR/Brewfile"
