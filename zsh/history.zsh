# history related stuff
#
# $ history
#  501 foo
#  502 bar
#  503 history
#
# !503           # history
# !-1            # history
# !!             # history
# !foo           # foo
# !?o?           # history
# ^foo^bar^      # bar
# !-3:s/foo/bar/ # bar
#

export HISTFILE=~/.zsh_history

setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE

export HISTSIZE=20000
export SAVEHIST=$HISTSIZE
