#!/bin/zsh

dir=~/dotfiles
backup_dir=~/dotfiles/backup
files="vimrc Xresources zprezto"

# Backup previous files into ./backup folder
echo "Creating $backup_dir for backup of existing dotfiles"
mkdir -p $backup_dir
echo "---done"

# Change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "---done"

# Create symlinks for new files
for file in $files; do
    echo "Moving all old files to backup directory"
    mv ~/.$file $backup_dir
    echo "Creating symlinks to $file in homedirectory"
    ln -s $dir/$file ~/.$file
    echo "---copied"
done

#nvim specific
mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
ln -s ~/.vim $XDG_CONFIG_HOME/nvim
ln -s ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim
echo "-- Installing vim-plug"
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

echo "---done"
