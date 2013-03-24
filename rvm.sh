# rvm related stuff
#

# adding rvm to PATH
PATH=$PATH:~/.rvm/bin

if shopt -q login_shell; then
  : # login shell
  [[ -s "~/.rvm/scripts/rvm" ]] && source "~/.rvm/scripts/rvm"
fi
