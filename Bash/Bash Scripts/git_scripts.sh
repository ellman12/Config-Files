in_repo_folder() {
	git rev-parse --is-inside-work-tree &>/dev/null
}

backup_remote_repo() {
	git clone --mirror $1 $2
}

backup_repo_folder() {
	if ! in_repo_folder; then
		echo "Must be ran inside a Git repo folder"
		return 1
	fi

	repo_root=$(git rev-parse --show-toplevel)
	repo_name=$(basename $repo_root)

	date=$(date '+%Y-%m-%d%r' | tr ':' ';')

	dest_path="$HOME/AppData/Local/Temp/Repo Backups/${repo_name} ${date}"
	echo "Copying ${repo_name} to ${dest_path}"

	mkdir -p "$dest_path"
	cp -ar .git "$dest_path"

	#Copy each tracked/untracked file, excluding .gitignored files.
	git ls-files --cached --others --exclude-standard | while read -r file; do
		mkdir -p "$dest_path/$(dirname "$file")"
		cp -ap "$file" "$dest_path/$file"
	done
}

