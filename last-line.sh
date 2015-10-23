#!/bin/bash
# usage last-line.sh <text> <file> <file2>
# example last-line.sh "Hello World" text.txt text2.txt
Text="$1"
File1="$2"
File2="$3"
readarray DataArray < "$File1"
Size=${#DataArray[@]}
NewArray=()
for (( i=0; i<Size-1; i++ ))
do
	Var="${DataArray[$i]}"
	NewArray+=("$Var")
done
NewArray+=("$Text")
NewArray+=("${DataArray[Size-1]}")
NewSize=${#NewArray[@]}

Line="${NewArray[0]}"
echo $Line > "$File2"

for (( j=1; j<NewSize; j++ ))
do
	Line="${NewArray[$j]}"
	echo $Line >> "$File2"
done
