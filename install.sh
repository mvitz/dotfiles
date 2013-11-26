#!/bin/bash

export dotfiles_root=$(cd "$(dirname "$0")"; pwd -P)
export dotfiles_scripts=$dotfiles_root/scripts

for install_script in $dotfiles_root/install/*.sh; do
  $install_script
done
