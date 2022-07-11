aws-shell () {
    if ! command -v aws-vault > /dev/null; then
      >&2 echo "aws-vault not found in PATH"
      return 1;
    fi;

    local TIME=""
    if [ "$2" != "" ]; then
        TIME=$2
    else
        TIME=1h
    fi

    aws-vault exec $1 --no-session --duration=$TIME
}