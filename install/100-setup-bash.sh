#!/bin/bash

echo "Setting up bash"
"$dotfiles_scripts/install-dotfile.sh" "$HOME/.dotfiles/bash_mac/bashrc" ~/.bashrc
"$dotfiles_scripts/install-dotfile.sh" "$HOME/.dotfiles/bash_mac/bin" ~/bin
