#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

DOTFILES_REPO_DIR=$(cd "$(dirname "$0")"; pwd -P)
DOTFILES_DIR="${HOME}/.dotfiles"

ln_dotfile() {
  local dotfile="${1}"
  [[ -L "${HOME}/.${dotfile}" ]] && unlink "${HOME}/.${dotfile}"
  ln -s "${DOTFILES_DIR}/${dotfile}" "${HOME}/.${dotfile}"
}

# create symlink for dotfiles
[[ -L "${DOTFILES_DIR}" ]] && unlink "${DOTFILES_DIR}"
ln -s "${DOTFILES_REPO_DIR}" "${DOTFILES_DIR}"

# git
ln_dotfile gitconfig

# bash
ln_dotfile bashrc

# vim
ln_dotfile vimrc

mkdir -p "${HOME}/.vim"
[[ -L "${HOME}/.vim/autoload" ]] && unlink "${HOME}/.vim/autoload"
ln -s "${DOTFILES_DIR}/vim/pathogen/autoload" "${HOME}/.vim/autoload"
