#!/bin/bash

myRepo = "https://github.com/davidmniu/templates"

mkdir -p /home/david/.vim/colors
cd /home/david/.vim/colors
wget https://raw.githubusercontent.com/jnurmine/Zenburn/master/colors/zenburn.vim

cd /home/david/
wget $myRepo/.vimrc
wget $myRepo/.bashrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

sudo apt install build-essential cmake vim-nox python3-dev
sudo apt install mono-complete golang nodejs default-jdk npm
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all

wget $myRepo/.ycm_extra_conf.py

mkdir -p /home/david/templates/
cd /home/david/templates/
wget $myRepo/complate.cpp
