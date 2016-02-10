#!/bin/bash
number_of_args="$#"
if [ "$number_of_args" -ge "1" ];
then
	for file in "$@"
	do
		if [ -r "$file" ];
		then
			echo "'$file' exists and readable"
			hashname="$file.md5"
			echo "$hashname"
			pv "$file" | md5sum > "$hashname"
			sed -i "s/-/$file/g" "$hashname"
			echo "Hash:"
			cat "$hashname"
		else
			echo "'$file' not exist or not readable"
		fi
	done
fi
