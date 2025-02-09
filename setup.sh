#!/bin/bash

# Created by Caleb Rabbon 2/7/2025
# Using ln to create .bashrc symlink as stow version 2.3.1 can't handle dotfiles in ~/.dotfile directly
# Supposedly fixed in version 2.4.0 https://github.com/aspiers/stow/issues/33

echo -e "\033[0;32mStart\033[0m"

echo -e "\033[0;32m\nUpdating system\033[0m"
sudo apt update

echo -e "\033[0;32m\nCloning Vundle plugin for vim\033[0m"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Removing .git folder so you can add it to your own repo later
rm -rf ~/.vim/bundle/Vundle.vim/.git

echo -e "\033[0;32m\nCloning Tmux Plugin Manager for tmux plugins\033[0m"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# Removing .git folder so you can add it to your own repo later
rm -rf ~/.tmux/plugins/tpm/.git

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
git remote set-url origin git@github.com:CalebRabbon/.dotfiles.git

echo -e "\033[0;32m\nSourcing ~/.bashrc\033[0m"
source ~/.bashrc

echo -e "\033[0;32m\nInstalling Vim Plugins\033[0m"
vim +PluginInstall +qall
echo -e "\033[0;32mInstalled Vim Plugins\033[0m"

echo -e "\033[0;32m\nInstalling Tmux Plugins\033[0m"
echo -e "\033[0;32mStarted tmux session\033[0m"
tmux new-session -d
tmux source ~/.tmux.conf
echo -e "\033[0;32mSourced ~/.tmux.conf\033[0m"
echo -e "\033[31mWARNING: Run tmux then run Prefix+I to install the rest of the plugins\033[0m"

echo -e "\033[0;32m\nInstalling C compiler for NeoVim\033[0m"
sudo apt install build-essential

echo -e "\033[0;32m\nInstalling pyenv\033[0m"
# Dependencies for pyenv
sudo apt install build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev curl git \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

git clone https://github.com/pyenv/pyenv.git ~/.pyenv

echo -e "\033[0;32m\nInstalling Neovim\033[0m"
sudo apt install neovim

echo -e "\033[0;32m\nInstalling LazyVim\033[0m"
git clone https://github.com/LazyVim/starter ~/.config/nvim

# Removing .git folder so you can add it to your own repo later
rm -rf ~/.config/nvim/.git

# Other dependencies
sudo apt install unzip
