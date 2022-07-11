function source-all() {
  for file in $@; do
      source "$file"
  done
}