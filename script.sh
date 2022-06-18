#!/bin/bash

myRepo="https://raw.githubusercontent.com/davidmniu/wslConfig/main/"

# Vim Zenburn
mkdir -p /home/david/.vim/colors
cd /home/david/.vim/colors
rm zenburn.vim
wget https://raw.githubusercontent.com/jnurmine/Zenburn/master/colors/zenburn.vim

# vimrc, bashrc
cd /home/david/
rm .vimrc
rm .bashrc
wget $myRepo.vimrc
wget $myRepo.bashrc

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Install ycm
sudo apt install build-essential cmake vim-nox python3-dev
sudo apt install mono-complete golang nodejs default-jdk npm
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clangd-completer

# Set up cpp dev
wget $myRepo/.ycm_extra_conf.py
mkdir -p /home/david/templates/
cd /home/david/templates/
wget $myRepo/complate.cpp

# Script for Windows Terminal
cd /mnt/c/Users/david/OneDrive/Desktop
wget $myRepo/terminal.ahk
