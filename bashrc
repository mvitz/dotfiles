# my custom .bashrc which should be sourced by ~/.bashrc
#

dotfile_home=~/.dotfiles
dotfile_scripts=""
dotfile_scripts="$dotfile_scripts cd.sh checksum.sh find.sh history.sh"
dotfile_scripts="$dotfile_scripts ls.sh ps.sh rvm.sh sudo.sh"

sds() { [[ -f $dotfile_home/$1 ]] && source $dotfile_home/$1; }

# some handy constants
export EDITOR='vi' # let vi be the default editor

# including all specific scripts
for dotfile_script in $dotfile_scripts; do sds $dotfile_script; done
