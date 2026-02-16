#!/bin/bash
source ./install.shared.sh

echo "Setting up Neovim"
mkdir -p ~/AppData/Local/nvim
cp -r ./Neovim/* ~/AppData/Local/nvim

echo "Setting up Lazygit"
mkdir -p ~/AppData/Local/lazygit
cp -r ./Lazygit/* ~/AppData/Local/lazygit

