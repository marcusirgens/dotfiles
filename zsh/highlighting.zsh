# This plugin gets special treatment, because it demands to be loaded last.

set -eu;

PLUGIN_DIR="$HOME/.zsh_plugins"
HIGHLIGHT_DIR="$PLUGIN_DIR/zsh-syntax-highlighting"

[ -d "PLUGIN_DIR" ] || mkdir -p "PLUGIN_DIR"
[ ! -d "$HIGHLIGHT_DIR" ] || rm -rf "$HIGHLIGHT_DIR"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git -b master --depth=1 "$HIGHLIGHT_DIR"
