#!/bin/bash

# Uses exiftool to copy all the metadata from one file to another.
copy_metadata() {
	if [ "$#" -ne 2 ]; then
		echo "Usage: copy_metadata inputFilename outputFilename"
		return 1
	fi

	inputFile="$1"
	outputFile="$2"

 	exiftool -TagsFromFile $inputFile -All:All $outputFile -overwrite_original -api largefilesupport=1
}

#Pulls the date taken timestamp from an item's filename and sets its metadata to it.
SetExifFromFilename() {
	# Usage: SetExifFromFilename [base_dir] [ext1 ext2 ext3 ...]
	# Example: SetExifFromFilename ./images jpg jpeg png mov mp4

	BASE_DIR="./"
	extensions=("$@")

	#If no extensions provided, use defaults
	if [ ${#extensions[@]} -eq 0 ]; then
		extensions=("png" "mp4" "mov")
	fi

	regex='([0-9]+[-_.: ]+)?([0-9]{4})[-_.: ]?([0-9]{2})[-_.: ]?([0-9]{2})[-_.: ]?([0-9]{2})[-_.: ]?([0-9]{2})[-_.: ]?([0-9]{2})'

	#Build the find command dynamically from the extensions array
	find_cmd=(find "$BASE_DIR" -type f)
	for ext in "${extensions[@]}"; do
		find_cmd+=(-iname "*.$ext" -o)
	done
	unset 'find_cmd[-1]'  # remove trailing -o

	#Run the find command and process results
	"${find_cmd[@]}" | while read -r f; do
		filename=$(basename "$f")

		if [[ $filename =~ $regex ]]; then
			year=${BASH_REMATCH[2]}
			month=${BASH_REMATCH[3]}
			day=${BASH_REMATCH[4]}
			hour=${BASH_REMATCH[5]}
			min=${BASH_REMATCH[6]}
			sec=${BASH_REMATCH[7]}

			exif_date="${year}:${month}:${day} ${hour}:${min}:${sec}"

			echo "[$filename] -> $exif_date"

			exiftool -overwrite_original -AllDates="$exif_date" "$f"
		else
			echo "Skipping $filename (no timestamp found)"
		fi
	done
}

