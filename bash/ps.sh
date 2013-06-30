# ps related stuff
#

# list current processes for given pattern
fps() {
  local pattern=${1:-""}
  ps ax | grep -i "$pattern" | grep -v grep
}
