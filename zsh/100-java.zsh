# java related stuff
#

escape_path() { echo "${1//\//\\/}"; }
path_remove() { awk -v RS=: -v ORS=: "/$(escape_path "$1")/ {next} {print}" | sed 's/:*$//'; }

jdk() {
  local jh="$APP_DIR/java$1"

  if [ ! -d "$jh" ]; then
    echo "No 'java$1' found in '$APP_DIR'!" >&2
    echo "Current java: '$JAVA_HOME'" >&2
    return 1
  fi

  PATH=$(echo "$PATH" | path_remove "$APP_DIR/java")
  JAVA_HOME="$jh"
  PATH="$JAVA_HOME/bin:$PATH"

  export JAVA_HOME
}

alias java5='jdk 5'
alias java6='jdk 6'
alias java7='jdk 7'
alias java8='jdk 8'

java8
