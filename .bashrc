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

# Given a video file with multiple audio tracks, use ffmpeg to create a new video that merges the specified audio tracks and adjusts their output volume.
merge_tracks() {
	if [ "$#" -ne 4 ]; then
		echo "Usage: merge_tracks inputFilename outputFilename \"audio tracks\" \"volume levels\""
		return 1
	fi

	inputFile="$1"
	outputFile="$2"
	tracks=($3)
	volumes=($4)

	if [ "${#tracks[@]}" -ne "${#volumes[@]}" ]; then
		echo "Audio tracks and volume level arrays need to have same length"
		return 1
	fi

	tracksCmd=""
	trailingTracksCmd=""

	for ((i = 0; i < ${#tracks[@]}; i++)); do
		tracksCmd+="[0:a:${tracks[i]}]volume=${volumes[i]}[a${tracks[i]}];"
		trailingTracksCmd+="[a${tracks[i]}]"
	done

	ffmpeg -i $inputFile -filter_complex ${tracksCmd}${trailingTracksCmd}amerge=inputs=${#tracks[@]}[aout] -map 0:v -map "[aout]" -c:v copy -c:a aac $outputFile
}
