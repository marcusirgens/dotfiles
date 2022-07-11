# Fetch common functions
source "$DOTFILE_DIR/install/functions.zsh"

# Architecture specific
case "$(uname -m)" in
      "arm64" )
        if [ ! -f "/Library/Apple/usr/share/rosetta/rosetta" ]; then
          echobox "You may now be prompted for your sudo password to install Rosetta 2."
          sudo softwareupdate --install-rosetta --agree-to-license
        fi
        ;;
    esac

