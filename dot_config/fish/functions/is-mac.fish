function is-mac -d "echo to stderr"
    test "$(uname -s)" = "Darwin"
end