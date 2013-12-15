# mkdir related stuff
#

alias md='mkdir -p'

mkcd() { [[ -n "$1" ]] && md "$1" && cd "$1"; }
