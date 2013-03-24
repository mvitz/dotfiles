# cd related stuff
#

# ignore scm directories on completion
export FIGNORE='.svn:.hg:.git'

# some handy aliases
alias   ..='cd ..'
alias  ...='cd ../..'
alias ....='cd ../../..'
alias -- -='cd -'

# creates the directory and changes into it
mkcd() { [[ -n "$1" ]] && mkdir -p $1 && cd $1; }
