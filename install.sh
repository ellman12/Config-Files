#!/bin/bash
#Copies config files to where they need to go.

#Set Up Bash
find ./Bash/ -maxdepth 1 -type f -exec cp {} ~/ \;

mkdir ~/Bash\ Scripts/
find ./Bash/Bash\ Scripts/ -type f -exec cp {} ~/Bash\ Scripts/ \;


#Set Up Git
cp ./Git/.gitconfig ~/.gitconfig


#Set Up Vim
find ./Vim/ -maxdepth 1 -type f ! -name "init.vim" -exec cp {} ~/ \;


#Set Up Neovim
mkdir ~/AppData/Local/nvim
cp ./Vim/init.vim ~/AppData/Local/nvim/init.vim

