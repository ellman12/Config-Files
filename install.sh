#!/bin/bash
#Copies config files to where they need to go (on a Windows machine).

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
cp -r ./Neovim/* ~/AppData/Local/nvim

