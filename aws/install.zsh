# Fetch common functions
source "$DOTFILE_DIR/install/functions.zsh"

if ! (command -v aws > /dev/null); then
  AWS_TMP="$(mktemp -d)"
  curl -SsLf "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "$AWS_TMP/AWSCLIV2.pkg"

  echobox "You will now be prompted for your sudo password to install the AWS CLI."

  sudo installer -pkg "$AWS_TMP/AWSCLIV2.pkg" -target /
fi
