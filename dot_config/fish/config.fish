if test -d $HOME/.local/bin
    fish_add_path --prepend "$HOME/.local/bin"
end

# Colors are fine.
set -xg COLORTERM "1"