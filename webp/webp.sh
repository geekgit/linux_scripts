#!/bin/bash
Input="$1"
Scale1="$2"
Scale2="$3"
Output="$4"
/usr/bin/dwebp "${Input}" -o "${Output}"
/usr/bin/mogrify -resize "${Scale1}x${Scale2}" "${Output}"
