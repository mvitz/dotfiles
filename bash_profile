export LANG='en_US.UTF-8'
export LC_COLLATE='C'
export LC_MONETARY='de_DE.UTF-8'
export LC_NUMERIC='de_DE.UTF-8'
export LC_TIME='de_DE.UTF-8'

# Prevent macOS from displaying a warning that zsh is now the default shell
export BASH_SILENCE_DEPRECATION_WARNING=1

# Prevent Homebrew from sending analytic data
export HOMEBREW_NO_ANALYTICS=1

# Force Homebrew to use curl and git installed via Homebrew
export HOMEBREW_FORCE_BREWED_CURL=1
export HOMEBREW_FORCE_BREWED_GIT=1

# Enable Homebrew
eval "$(/usr/local/Homebrew/bin/brew shellenv)"

# Add Homebrew installed curl to start of PATH
export PATH="${HOMEBREW_PREFIX}/opt/curl/bin:${PATH+:$PATH}"

# Enable Homebrew installed bash completion
if [ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]; then
  source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
fi

if [ -n "$BASH" ] && [ -r "$HOME/.bashrc" ]; then
  source "$HOME/.bashrc"
fi
