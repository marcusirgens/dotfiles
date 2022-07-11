set -eu;

# Fetch common functions
source "$DOTFILE_DIR/install/functions.zsh"

if [ ! -z "$GPG_KEY_ID" ]; then
   if (gpg --list-secret-keys --keyid-format=long | grep "$GPG_KEY_ID" -q); then
     echoerr "GPG key already installed"
     return
   fi
fi


if [ ! -z "$GPG_KEY_OP_ID" ]; then

  # create a temp dir to hold the file (we could probably get this from stdin?)
  GPG_KEYDIR=$(mktemp -d)
  op document get "$GPG_KEY_OP_ID" --output "$GPG_KEYDIR/gpgkey.backups"

  echobox "You might now be prompted for the password for the GPG key for m@mrcus.dev."

  gpg --import-options restore \
    --import "$GPG_KEYDIR/gpgkey.backups"

  rm -rf "$GPG_KEYDIR"
fi