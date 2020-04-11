export LANG='en_US.UTF-8'
export LC_COLLATE='C'
export LC_MONETARY='de_DE.UTF-8'
export LC_NUMERIC='de_DE.UTF-8'
export LC_TIME='de_DE.UTF-8'

export BASH_SILENCE_DEPRECATION_WARNING=1

if [ -n "$BASH" ] && [ -r "$HOME/.bashrc" ]; then
  source "$HOME/.bashrc"
fi

source "$(brew --prefix)/etc/profile.d/bash_completion.sh"
