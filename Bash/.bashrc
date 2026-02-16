source ~/.git-prompt.sh
source ~/.git-completion.bash

if [[ "$OSTYPE" == "msys"* ]]; then
    PS1='\n\[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$ \001\e[1314~\002'
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    PS1='\n\[\e[33m\]\w\[\e[36m\]$(__git_ps1 " (%s)")\[\e[0m\]\n$ '
fi

export HISTCONTROL=ignoredups:erasedups

SCRIPTS_PATH="$HOME/Repos/Config-Files/Bash/Bash Scripts"

if [ -d "$SCRIPTS_PATH" ]; then
    for script in "$SCRIPTS_PATH"/*.sh; do
        if [ -f "$script" ]; then
            source "$script"
        fi
    done
fi

