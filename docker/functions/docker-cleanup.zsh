# docker-cleanup wipes most docker stuff
function docker-cleanup() {
  docker system prune --all --force --volumes
}