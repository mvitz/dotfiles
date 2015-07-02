set -x EDITOR vi
set -x VISUAL vi
set -x PAGER less
set -x LESS '-isMR --shift 5'

set -e fish_greeting

# java
jdk 8

# maven
set -x M2_HOME /Users/mvitz/Applications/maven
set PATH $PATH $M2_HOME/bin

# chruby
source /usr/local/share/chruby/chruby.fish
source /usr/local/share/chruby/auto.fish

# misc
set PATH $HOME/bin $PATH
set PATH ./bin $PATH
