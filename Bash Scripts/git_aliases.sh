#https://stackoverflow.com/a/38595828

alias gs="git status"

#Log
alias gl="git log --abbrev-commit --decorate"
alias glo="git log --abbrev-commit --decorate --oneline"
alias glg="git log --abbrev-commit --decorate --graph"
alias glog="git log --abbrev-commit --decorate --oneline --graph"

#Commit, push, pull
gc() { git commit -m "$1"; }
alias gca="git commit --amend --no-edit"
alias gcae="git commit --amend"

alias gp="git push -q ; clear"
alias gpf="git push -f -q ; clear"
alias gfa="git add . && git commit --amend --no-edit && gpf"

alias gpl="git pull -q ; clear"
grh() { git fetch && git reset --hard origin/"$1"; }
gdb() { git branch -d "$1" && git push origin --delete "$1"; }


#Stash
alias gsa="git stash apply"
alias gspu="git stash push"
alias gspo="git stash pop"
alias gsl="git stash list"
gsd() { git stash drop "$1"; }


