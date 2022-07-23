set -gx GOPATH "$HOME/go"
set -gx GOBIN "$GOPATH/bin"

if type -q go
    fish_add_path "$GOBIN"
end