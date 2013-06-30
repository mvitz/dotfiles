# history related stuff
#

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
export HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# append to history after every command
export PROMPT_COMMAND='history -a'

# list most used commands
history_stats() { history | awk '{print $2}' | sort | uniq -c | sort -rn | head; }
