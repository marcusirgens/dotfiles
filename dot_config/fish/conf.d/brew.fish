if test -f /opt/homebrew/bin/brew
    and type -q /opt/homebrew/bin/brew
    eval (/opt/homebrew/bin/brew shellenv)
end

switch "$(uname -s)"
    case "Darwin"
        # We could use brew --prefix openjdk, but it fails when java is not installed.
        if type -q test -f /opt/homebrew/bin/brew
            and type -q /opt/homebrew/bin/brew
            eval (/opt/homebrew/bin/brew shellenv)
        else if type -q test -f /usr/local/bin/brew
            and type -q /usr/local/bin/brew
            eval (/opt/homebrew/bin/brew shellenv)
        end
end

