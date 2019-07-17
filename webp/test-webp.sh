#!/bin/bash
Input="$1"
Scale1="$2"
Scale2="$3"
Output="$4"
Info=$(/usr/bin/cwebp "${Input}")
Dimension=$(/usr/bin/cwebp "${Input}" | grep "Dimension:" | awk -F: '{print $2}')
Size1=$(echo "${Dimension}" | awk -Fx '{print $1}' | xargs)
Size2=$(echo "${Dimension}" | awk -Fx '{print $2}' | xargs)
echo "Input: ${Input}" >> ~/test-webp.log
echo "Scale1: ${Scale1}" >> ~/test-webp.log
echo "Scale2: ${Scale2}" >> ~/test-webp.log
echo "Output: ${Output}" >> ~/test-webp.log
echo "Dimension: ${Dimension}" >> ~/test-webp.log
echo "Size1: ${Size1}" >> ~/test-webp.log
echo "Size2: ${Size2}" >> ~/test-webp.log
echo "Info: ${Info}" >> ~/test-webp.log
/usr/bin/dwebp "${Input}" -scale ${Scale1} ${Scale2} -o "${Output}"
InputType=$(file "${Input}")
OutputType=$(file "${Output}")
echo "Input file type: ${InputType}" >> ~/test-webp.log
echo "Output file type: ${OutputType}" >> ~/test-webp.log
