alias ls='ls -A -F --color=auto --show-control-chars'

alias nrb="clear && npm run build"
alias nrd="clear && npm run dev"

alias vi="nvim"
alias vim="nvim"

alias lz="lazygit"

#Make and move to new directory
mkd() {
	mkdir -p "$@"
	cd "$@" || exit
}

#Common folders
alias cdgh='cd "C:/Users/Elliott/Documents/GitHub"'
alias cdahk='cd "C:/Users/Elliott/Documents/GitHub/AutoHotkey-V2"'
alias cdcfg='cd "C:/Users/Elliott/Documents/GitHub/Config-Files"'

