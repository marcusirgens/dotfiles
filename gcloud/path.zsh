GCLOUD_SRC="$HOME/.local/src/gcloud"

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$GCLOUD_SRC/path.zsh.inc" ]; then source "$GCLOUD_SRC/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$GCLOUD_SRC/completion.zsh.inc" ]; then source "$GCLOUD_SRC/completion.zsh.inc"; fi
