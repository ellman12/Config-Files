alias ..='cd ..'
alias ls='ls -A -F --color=auto --show-control-chars'

function mkcd() { mkdir -p "$1" && cd "$1"; }

alias vi="nvim"
alias vim="nvim"

alias lz="lazygit"

#Make and move to new directory
mkd() {
	mkdir -p "$@"
	cd "$@" || exit
}

alias 7z='"/c/Program Files/7-Zip/7z.exe"'

#Common folders
alias cdahk='cd ~/Repos/AutoHotkey-Scripts'
alias cdcfg='cd ~/Repos/Config-Files'
alias cdwtb='cd ~/Repos/WingTechBot-MK3'

alias cddesk='cd ~/Desktop'
alias cddocs='cd ~/Documents'
alias cdobsi='cd ~/Documents/Obsidian'
alias cddown='cd ~/Downloads'
alias cdpics='cd ~/Pictures'
alias cdvids='cd ~/Videos'

