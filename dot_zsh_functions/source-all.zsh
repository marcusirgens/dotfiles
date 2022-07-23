function source-all() {
  for f in "$@"; do
      source "$f"
  done
}
