aws-shell () {
    local TIME=""
    if [ "$2" != "" ]; then
        TIME=$2
    else
        TIME=1h
    fi

    aws-vault exec $1 --no-session --assume-role-ttl=$TIME
}
