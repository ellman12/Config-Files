PS1='\n\[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$ \001\e[1314~\002'

export HISTCONTROL=ignoredups:erasedups

SCRIPTS_PATH="./Bash Scripts"

if [ -d "$SCRIPTS_PATH" ]; then
    for script in "$SCRIPTS_PATH"/*.sh; do
        if [ -f "$script" ]; then
            source "$script"
        fi
    done
fi

alias nrb="clear && npm run build"
alias nrd="clear && npm run dev"

alias vi="nvim"
alias vim="nvim"

#Start directory
cd ~/Documents/GitHub

