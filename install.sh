#!/bin/bash
#Copies config files to where they need to go (on a Windows machine).

#Set up Bash
find ./Bash/ -maxdepth 1 -type f -exec cp {} ~/ \;

#Set up Git
cp ./Git/.gitconfig ~/.gitconfig

#Set up Vim
cp ./Vim/.vimrc ~/.vimrc
cp ./Vim/.ideavimrc ~/.ideavimrc

#Set up Neovim
mkdir ~/AppData/Local/nvim
cp -r ./Neovim/* ~/AppData/Local/nvim

#Set up Lazygit
mkdir ~/AppData/Local/lazygit
cp -r ./Lazygit/* ~/AppData/Local/lazygit

