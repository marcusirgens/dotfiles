# Fetch common functions
source "$DOTFILE_DIR/install/functions.zsh"

DOCKER_DMG="$HOME/.local/src/Docker.dmg"

if ! (command -v docker > /dev/null); then
  if [ ! -f "$DOCKER_DMG" ]; then
    echoerr "Downloading Docker"

    # Get the correct architecture
    case "$(uname -m)" in
      "arm64" )
        curl -SsLfo "$DOCKER_DMG" "https://desktop.docker.com/mac/main/arm64/Docker.dmg";
        ;;
       * )
        curl -SsLfo "$DOCKER_DMG" "https://desktop.docker.com/mac/main/amd64/Docker.dmg";
        ;;
    esac
  fi

  echobox "You may now be prompted for your sudo password to install Docker"
  
  sudo hdiutil attach "$DOCKER_DMG"
  sudo /Volumes/Docker/Docker.app/Contents/MacOS/install --accept-license
  sudo hdiutil detach /Volumes/Docker

  [ ! -f "$DOCKER_DMG" ] || rm "$DOCKER_DMG"
fi
