#!/bin/bash
# Shared steps between Linux and Windows.

echo "Setting up Bash"
find ./Bash/ -maxdepth 1 -type f -exec cp {} ~/ \;

echo "Setting up Git"
cp ./Git/.gitconfig ~/.gitconfig

curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
curl -o ~/.git-completion.bash https://raw.githubusercontent.com/git/git/refs/heads/master/contrib/completion/git-completion.bash
echo "Downloaded Git shell scripts"

echo "Setting up Vim"
cp ./Vim/.vimrc ~/.vimrc
cp ./Vim/.ideavimrc ~/.ideavimrc

