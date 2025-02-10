### language defaults
export LANG='en_US.UTF-8'
export LC_COLLATE='C'
export LC_MONETARY='de_DE.UTF-8'
export LC_NUMERIC='de_DE.UTF-8'
export LC_TIME='de_DE.UTF-8'

# Prevent macOS from displaying a warning that zsh is now the default shell
export BASH_SILENCE_DEPRECATION_WARNING=1

### Homebrew
# Prevent Homebrew from sending analytic data
export HOMEBREW_NO_ANALYTICS=1

# Force Homebrew to use curl and git installed via Homebrew
export HOMEBREW_FORCE_BREWED_CURL=1
export HOMEBREW_FORCE_BREWED_GIT=1

# Enable Homebrew
eval "$(/opt/Homebrew/bin/brew shellenv)"

# Add Homebrew installed curl to start of PATH
export PATH="${HOMEBREW_PREFIX}/opt/curl/bin:${PATH+:$PATH}"

# Enable Homebrew installed bash completion
if [ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]; then
  source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
fi

### system defaults
export EDITOR='vi'
export VISUAL='vi'

export PAGER='less'
export LESS='-isMR --shift 5'
eval "$(lesspipe.sh)"

bind 'set completion-ignore-case on'
bind 'set completion-map-case on'
bind 'set show-all-if-ambiguous on'

### aliases
alias    ..='cd ..'
alias   ...='cd ../..'
alias  ....='cd ../../..'
alias  -- -='cd -'

alias    ls='ls -G'
alias     l='ls -lh'
alias    lt='l -tr'
alias    la='l -A'
alias   lat='la -tr'

alias  grep='grep --color=auto'
alias fgrep='grep --color=auto'
alias egrep='grep --color=auto'

alias find='gfind'
alias  sed='gsed'

alias refresh='source ~/.bashrc'

### theme
export PROMPT_COMMAND=__prompt_command

function __prompt_command() {
  local EXIT="$?"

  local   PURPLE="\[\033[0;35m\]"
  local    GREEN="\[\033[0;32m\]"
  local      RED="\[\033[0;31m\]"
  local NO_COLOR="\[\033[0m\]"

  PS1=""
  PS1+="$GREEN\w"
  PS1+="$PURPLE$(__git_ps1) "
  if [ $EXIT != 0 ]; then
    PS1+="$RED"
  else
    PS1+="$NO_COLOR"
  fi
  PS1+="\$ $NO_COLOR"
}

### history
shopt -s histappend
shopt -s cmdhist
export HISTCONTROL=erasedups:ignoreboth
export HISTSIZE=500000
export HISTFILESIZE=100000
export PROMPT_COMMAND="$PROMPT_COMMAND; history -a"
export HISTIGNORE="&:[ ]*:exit:ls:l:lt:la:lat:bg:fg:history"
export HISTFORMAT='%F %T '

### functions
# creates the directory and changes into it
mkcd() { [[ -n "$1" ]] && mkdir -p $1 && cd $1; }
# don't forget the : when using scp
scp(){ [[ "$@" =~ : ]] && command scp "$@" || echo 'You forgot the colon!'; }

### navigation
shopt -s autocd
shopt -s dirspell
shopt -s cdspell

### git
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="verbose"

alias cdr='cd $(git rev-parse --show-toplevel)'

### SDKMAN!
export SDKMAN_DIR="${HOME}/.sdkman"
[[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"

### NVM
export NVM_DIR="${HOME}/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

### direnv
eval "$(direnv hook bash)"

### ruby
source "${HOMEBREW_PREFIX}/share/chruby/chruby.sh"
source "${HOMEBREW_PREFIX}/share/chruby/auto.sh"

### fzf
eval "$(fzf --bash)"
