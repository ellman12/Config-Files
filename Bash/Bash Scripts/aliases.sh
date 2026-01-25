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

#Common folders
alias cdrps='cd ~/Documents/Repos'
alias cdahk='cd ~/Documents/Repos/AutoHotkey-Scripts'
alias cdcfg='cd ~/Documents/Repos/Config-Files'
alias cdwtb='cd ~/Documents/Repos/WingTechBot-MK3'

alias cddesk='cd ~/Desktop'
alias cddocs='cd ~/Documents'
alias cddown='cd ~/Downloads'
alias cdpics='cd ~/Pictures'
alias cdvids='cd ~/Videos'

