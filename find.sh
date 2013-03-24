# find related stuff
#

# find specified files, ignores everything specified by $FIGNORE
f_ignore=$(echo "\\($FIGNORE\\)" | sed 's/:/\\|/g' | sed 's/\./\\\./g')
f() {
  local pattern=${1:-"*"}
  local path=${2:-"."}
  find "$path" -iname "$pattern" | grep -v "$f_ignore"
}

# find text in specified files
fl() {
  local pattern=${1:-""}
  f "$2" "$3" | xargs grep -i -n -2 --color=auto "$pattern"
}
