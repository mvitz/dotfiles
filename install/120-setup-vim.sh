#!/bin/bash

echo "Setting up vim"

"$dotfiles_scripts/install-dotfile.sh" "$dotfiles_root/vim/vimrc" ~/.vimrc

mkdir ~/.vim
"$dotfiles_scripts/install-dotfile.sh" "$dotfiles_root/vim/pathogen/autoload" ~/.vim/autoload
"$dotfiles_scripts/install-dotfile.sh" "$dotfiles_root/vim/bundle" ~/.vim/bundle
