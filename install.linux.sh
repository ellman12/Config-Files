#!/bin/bash
source ./install.shared.sh

echo "Setting up Neovim"
mkdir -p ~/.config/nvim
cp -r ./Neovim/* ~/.config/nvim

echo "Setting up Lazygit"
mkdir -p ~/.config/lazygit
cp -r ./Lazygit/* ~/.config/lazygit/

