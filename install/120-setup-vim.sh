#!/bin/bash

echo "Setting up vim"

"$dotfiles_scripts/install-dotfile.sh" "$HOME/.dotfiles/vim/vimrc" ~/.vimrc
"$dotfiles_scripts/install-dotfile.sh" "$HOME/.dotfiles/vim/gvimrc" ~/.gvimrc

mkdir ~/.vim
"$dotfiles_scripts/install-dotfile.sh" "$HOME/.dotfiles/vim/pathogen/autoload" ~/.vim/autoload
"$dotfiles_scripts/install-dotfile.sh" "$HOME/.dotfiles/vim/bundle" ~/.vim/bundle
