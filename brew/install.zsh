# Install homebrew.

set -eu;

if ! (command -v brew > /dev/null); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Double check for command line tools
if ! (xcode-select -p > /dev/null); then
  echo "Install xcode using brew!"
fi;