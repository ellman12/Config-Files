PS1='\n\[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$ \001\e[1314~\002'

alias gp="git push -q ; clear"
alias gpf="git push -f -q ; clear"
alias gpl="git pull -q ; clear"

grh() {
	git fetch && git reset --hard origin/$1
}
