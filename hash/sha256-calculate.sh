#!/bin/bash
number_of_args="$#"
if [ "$number_of_args" -ge "1" ];
then
	for file in "$@"
	do
		if [ -r "$file" ];
		then
			echo "'$file' exists and readable"
			hashname="$file.sha256"
			echo "$hashname"
			pv "$file" | sha256sum > "$hashname"
			sed -i "s/-/$file/g" "$hashname"
			echo "Hash:"
			cat "$hashname"
		else
			echo "'$file' not exist or not readable"
		fi
	done
fi
