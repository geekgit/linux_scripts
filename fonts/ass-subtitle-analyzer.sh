#!/bin/bash
File="$@"
echo "File: $File"
SubFonts=$(cat "$File" | grep 'Style:' | grep ',' | awk -F: '{print $2}' | awk -F, '{print "\"" $2 "\""}' | sort | uniq)
readarray -t SubFontsArray <<<"$SubFonts"
Count=$(printf "%s\n" "${SubFontsArray[@]}"| wc -l)
for ((i = 0 ; i < $Count ; i++)); do
	echo "Font #$i: ${SubFontsArray[$i]}"
done
echo "Check availability:"
for ((i = 0 ; i < $Count ; i++)); do
	check-font "${SubFontsArray[$i]}"
done
