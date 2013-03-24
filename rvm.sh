# rvm related stuff
#

export RVM_HOME=~/.rvm
PATH=$PATH:$RVM_HOME/bin

if shopt -q login_shell; then
  [[ -s $RVM_HOME/scripts/rvm ]] && . $RVM_HOME/scripts/rvm
  [[ -s $RVM_HOME/scripts/completion ]] && . $RVM_HOME/scripts/completion
fi
