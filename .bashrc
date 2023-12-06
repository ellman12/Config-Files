PS1='\n\[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$ \001\e[1314~\002'

export HISTCONTROL=ignoredups:erasedups

alias gs="git status"

gc() {
	git checkout $1
}

alias gp="git push -q ; clear"
alias gpf="git push -f -q ; clear"
alias gpl="git pull -q ; clear"
alias gfa="git add . && git commit --amend --no-edit && gpf"

gdb() {
	git branch -d $1 && git push origin --delete $1
}

grh() {
	git fetch && git reset --hard origin/$1
}

alias gsa="git stash apply"
alias gsc="git stash create"
alias gsp="git stash pop"
alias gsl="git stash list"

gsd() {
	git stash drop $1
}

alias nrb="clear && npm run build"
alias nrd="clear && npm run dev"
