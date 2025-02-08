#!/bin/bash

# Created by Caleb Rabbon 2/7/2025
# Using ln to create .bashrc symlink as stow version 2.3.1 can't handle dotfiles in ~/.dotfile directly
# Supposedly fixed in version 2.4.0 https://github.com/aspiers/stow/issues/33

echo -e "\033[0;32mStart\033[0m\n"

ln -s -t ~/ ~/.dotfiles/.bashrc -f -v
ln -s -t ~/ ~/.dotfiles/.vimrc -f -v
ln -s -t ~/ ~/.dotfiles/.tmux.conf -f -v

echo -e "\033[0;32m\nFinished creating symlinks\033[0m"
