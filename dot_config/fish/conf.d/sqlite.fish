# SQLite is "keg-only" because macOS already provides this software.
if is-mac
    and type -q brew
    and test -d "$(brew --prefix)/opt/sqlite/bin"
    fish_add_path --prepend "$(brew --prefix)/opt/sqlite/bin"
end