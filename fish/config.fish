set -x EDITOR vi
set -x VISUAL vi
set -x PAGER less
set -x LESS '-isMR --shift 5'

set -e fish_greeting

# misc
set PATH $HOME/bin $PATH

# java
jdk 8

# maven
set -x M2_HOME /Users/mvitz/Applications/maven
set PATH $PATH $M2_HOME/bin
