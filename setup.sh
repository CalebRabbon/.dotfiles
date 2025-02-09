#!/bin/bash

# Created by Caleb Rabbon 2/7/2025
# Using ln to create .bashrc symlink as stow version 2.3.1 can't handle dotfiles in ~/.dotfile directly
# Supposedly fixed in version 2.4.0 https://github.com/aspiers/stow/issues/33

echo -e "\033[0;32mStart\033[0m"

echo -e "\033[0;32m\nCloning Vundle plugin for vim\033[0m"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo -e "\033[0;32m\nCloning Tmux Plugin Manager for tmux plugins\033[0m"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo -e "\033[0;32m\nCreating symlinks\033[0m"
ln -s -t ~/ ~/.dotfiles/.bashrc -f -v
ln -s -t ~/ ~/.dotfiles/.vimrc -f -v
ln -s -t ~/ ~/.dotfiles/.tmux.conf -f -v
echo -e "\033[0;32m\nFinished creating symlinks\033[0m"

echo -e "\033[0;32m\nSetting up default github username and email\033[0m"
git config --global user.name "Caleb Rabbon"
git config --global user.name
git config --global user.email "caleb.rabbon@gmail.com"
git config --global user.email

vim +PluginInstall +qall
echo -e "\033[0;32m\nInstalled Vim Plugins\033[0m"

tmux source ~/.tmux.conf
echo -e "\033[0;32m\nInstalled Tmux Plugins\033[0m"

echo -e "\033[31mWARNING: Run tmux then run Prefix+I to install the rest of the plugins\033[0m"
