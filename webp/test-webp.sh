#!/bin/bash
Input="$1"
Scale1="$2"
Scale2="$3"
Output="$4"
echo "Input: ${Input}" >> ~/test-webp.log
echo "Scale1: ${Scale1}" >> ~/test-webp.log
echo "Scale2: ${Scale2}" >> ~/test-webp.log
echo "Output: ${Output}" >> ~/test-webp.log
/usr/bin/dwebp $Input -scale ${Scale1} ${Scale2} -o ${Output}
InputType=$(file "${Input}")
OutputType=$(file "${Output}")
echo "Input file type: ${InputType}" >> ~/test-webp.log
echo "Output file type: ${OutputType}" >> ~/test-webp.log
