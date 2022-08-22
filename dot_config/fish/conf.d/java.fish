switch "$(uname -s)"
    case "Darwin"
        # We could use brew --prefix openjdk, but it fails when java is not installed.
        if type -q brew
            and test -d "$(brew --prefix)/opt/openjdk/bin"
            fish_add_path "$(brew --prefix)/opt/openjdk/bin/"
        end
end

