#!/bin/bash

echo "Using ln to create .bashrc symlink as stow version 2.3.1 can't handle dotfiles in ~/.dotfile directly"
echo "Supposedly fixed in version 2.4.0 https://github.com/aspiers/stow/issues/33"
ln -s -t ~/ ~/.dotfiles/.bashrc -f
ln -s -t ~/ ~/.dotfiles/.vimrc -f
ln -s -t ~/ ~/.dotfiles/.tmux.conf -f
