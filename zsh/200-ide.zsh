# IDE related stuff
#

# IDEA
if [ -d "$APP_DIR/idea" ]; then
  alias idea="$APP_DIR/idea/bin/idea.sh"
fi

# ECLIPSE
if [ -d "$APP_DIR/eclipse" ]; then
  alias eclipse="UBUNTU_MENUPROXY= $APP_DIR/eclipse/eclipse"
fi

# NETBEANS
if [ -d "$APP_DIR/netbeans" ]; then
  alias netbeans="$APP_DIR/netbeans/bin/netbeans"
fi

# STS
if [ -d "$APP_DIR/sts" ]; then
  alias sts="UBUNTU_MENUPROXY= $APP_DIR/sts/STS"
fi
