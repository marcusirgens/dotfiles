# Fetch common functions
source "$DOTFILE_DIR/install/functions.zsh"

ZSH_DIR="$DOTFILE_DIR/zsh"

GCLOUD_DIR="$DOTFILE_DIR/gcloud"

brew bundle --no-upgrade --no-lock --file "$GCLOUD_DIR/Brewfile"

GCLOUD_SRC="$HOME/.local/src/gcloud"
GCLOUD_SRC_TAR="$HOME/.local/src/gcloud.tar.gz"

if [ ! -d "$GCLOUD_SRC" ]; then
  if [ ! -f "$GCLOUD_SRC_TAR" ]; then
    echoerr "Downloading gcloud"
    case "$(uname -m)" in
      "arm64" )
        curl -SsLfo "$GCLOUD_SRC_TAR" https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-392.0.0-darwin-arm.tar.gz;
        ;;
    esac
  fi

  GCLOUD_TMP="$(mktemp -d)"
  tar -xzf "$GCLOUD_SRC_TAR" -C "$GCLOUD_TMP"
  mv "$GCLOUD_TMP/google-cloud-sdk" "$GCLOUD_SRC"
fi

"$GCLOUD_SRC/install.sh" --path-update=False --quiet

# Disable stats
"$GCLOUD_SRC/bin/gcloud" config set disable_usage_reporting false

# Install plugins
# Google Kubernetes auth
"$GCLOUD_SRC/bin/gcloud" components install --quiet gke-gcloud-auth-plugin
