#!/bin/bash
# echo "TEST"
number_of_args="$#"
echo "Number of args: $number_of_args"
if [ "$number_of_args" != "1" ];
then
	echo "Multi Arg Mode"
	for some_arg in "$@"
	do
		echo "Arg=$some_arg"
		chash "$some_arg"
	done
else
	echo "Single Arg Mode"
fi

file="$1"
echo "Filename: $file"
if [ -r "$file" ];
then
	echo "$file exists and readable"
	hashname="${file%.*}.md5"
	echo "$hashname"
	pv "$file" | md5sum > $hashname
	sed -i "s/-/$file/g" $hashname
	echo "Hash:"
	cat "$hashname"
#	echo "Check..."
#	md5sum -c $hashname
else
	echo "$file not exist or not readable"
fi

