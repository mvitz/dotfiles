# history related stuff
#

# append to history after every command
export PROMPT_COMMAND='history -a'

# list most used commands
history_stats() { history | awk '{print $2}' | sort | uniq -c | sort -rn | head; }
