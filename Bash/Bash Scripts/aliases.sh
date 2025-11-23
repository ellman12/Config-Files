alias ..='cd ..'
alias ls='ls -A -F --color=auto --show-control-chars'

alias vi="nvim"
alias vim="nvim"

alias lz="lazygit"

#Make and move to new directory
mkd() {
	mkdir -p "$@"
	cd "$@" || exit
}

#Common folders
alias cdrps='cd "C:/Users/Elliott/Documents/Repos"'
alias cdahk='cd "C:/Users/Elliott/Documents/Repos/AutoHotkey-V2"'
alias cdcfg='cd "C:/Users/Elliott/Documents/Repos/Config-Files"'
alias cdwtb='cd "C:/Users/Elliott/Documents/Repos/WingTechBot-MK3"'

alias cddesk='cd "C:/Users/Elliott/Desktop"'
alias cddocs='cd "C:/Users/Elliott/Documents"'
alias cddown='cd "C:/Users/Elliott/Downloads"'
alias cdpics='cd "C:/Users/Elliott/Pictures"'
alias cdvids='cd "C:/Users/Elliott/Videos"'

