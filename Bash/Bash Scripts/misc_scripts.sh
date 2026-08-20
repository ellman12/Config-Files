#Make and move to new directory
mkd() {
	mkdir -p "$@"
	cd "$@" || exit
}

compress() {
	if [ $# -eq 0 ]; then
		echo "Usage: compress <file_or_folder_path> [output_dir]"
		return 1
	fi

	TARGET="$1"
	OUTPUT_DIR="${2:-.}"

	if [ ! -e "$TARGET" ]; then
		echo "Error: '$TARGET' is not a valid file or directory"
		return 1
	fi

	mkdir -p "$OUTPUT_DIR"

	#Strip trailing slash (relevant for folders), then grab just the base name
	TARGET="${TARGET%/}"
	OUTPUT_DIR="${OUTPUT_DIR%/}"
	if [ -d "$TARGET" ]; then
		BASE_NAME=$(basename "$TARGET")
	else
		BASE_NAME=$(basename "$TARGET")
		BASE_NAME="${BASE_NAME%.*}"
	fi

	TIMESTAMP=$(date +%Y%m%d_%H%M%S)
	OUTPUT="${OUTPUT_DIR}/${BASE_NAME}_${TIMESTAMP}.7z"
	echo "Compressing '$TARGET' -> '$OUTPUT' (max compression)..."

	7z a -t7z -mx=9 "$OUTPUT" "$TARGET"

	echo "Done: $OUTPUT"
}
