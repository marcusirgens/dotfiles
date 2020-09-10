# Shortcut for composer binaries
vendor () {
  if [ ! -d "./vendor/bin" ]; then
    >&2 echo "No composer binaries found"
    return 1
  fi

  if [ ! -f "./vendor/bin/$1" ]; then
    >&2 echo "$1 not found in ./vendor/bin"
    return 1
  fi

  # Execute with arguments shifted
  "./vendor/bin/$1" "${@:2}"
}

# Shortcut for above
cv () {
  vendor "$@"
}
