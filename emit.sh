#!/bin/bash

dir=~/dotfiles
backup_dir=~/dotfiles/backup
files="bashrc vimrc Xresources"

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

echo "---done"
