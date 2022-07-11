# https://stackoverflow.com/a/2990533
function echoerr() { echo "$@" 1>&2; }

function echobox() {
   echoerr ""
   echoerr "--------------------------------------------------------------------------------"
   echoerr "$@"
   echoerr "--------------------------------------------------------------------------------"
   echoerr ""
}