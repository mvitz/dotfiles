# dotfiles
This git repository contains my dotfiles.

## installation
```bash
sudo apt-get install git realpath
git clone https://github.com/mvitz/dotfiles.git ~/mvitz-dotfiles
cd ~/mvitz-dotfiles
git submodule init
git pull --recurse-submodules
./install.sh
```
