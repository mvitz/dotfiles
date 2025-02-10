#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

DOTFILES_REPO_DIR=$(cd "$(dirname "$0")"; pwd -P)
DOTFILES_DIR="${HOME}/.dotfiles"

ln_dotfile() {
  local dotfile
  dotfile=$(basename "${1}")
  [[ -L "${HOME}/.${dotfile}" ]] && unlink "${HOME}/.${dotfile}"
  ln -s "${DOTFILES_DIR}/${1}" "${HOME}/.${dotfile}"
}

# create symlink for dotfiles
[[ -L "${DOTFILES_DIR}" ]] && unlink "${DOTFILES_DIR}"
ln -s "${DOTFILES_REPO_DIR}" "${DOTFILES_DIR}"

# git
ln_dotfile git/gitconfig

# bash
ln_dotfile bash/bash_history
ln_dotfile bash/bash_profile
ln_dotfile bash/bash_sessions
ln_dotfile bash/bashrc

# npm
ln_dotfile npm/npmrc

# netrc
ln_dotfile netrc

# direnv
ln_dotfile direnv/direnvrc

# ssh
ln_dotfile ssh

# maven
ln_dotfile m2
