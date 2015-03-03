#!/bin/bash

echo "Setting up git"
"$dotfiles_scripts/install-dotfile.sh" "$HOME/.dotfiles/git/gitconfig" ~/.gitconfig
"$dotfiles_scripts/install-dotfile.sh" "$HOME/.dotfiles/git/gitignore" ~/.gitignore
