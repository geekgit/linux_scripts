#!/bin/bash
number_of_args="$#"
if [ "$number_of_args" -ge "1" ];
then
	for file in "$@"
	do
		if [ -r "$file" ];
		then
			echo "Extract '$file'..."
			unrar e "${file}"
		else
			echo "'$file' not exist or not readable"
		fi
	done
fi
