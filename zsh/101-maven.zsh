# maven related stuff
#

if [ -d "$APP_DIR/maven" ]; then
  export M2_HOME="$APP_DIR/maven"
  PATH="$M2_HOME/bin:$PATH"
fi
