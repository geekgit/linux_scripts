#!/bin/bash
URL="$1"
#URL = https://github.com/%username%/%software%/releases
Filename="$HOME/$(uuidgen)-github-releases.html"
wget "$URL" -O "$Filename"
Link=$(grep -Po '(?<=href=")[^"]*' "$Filename" | grep -v https | grep releases | grep download | uniq | sort -r | uniq | head -n1)
LinkFull="https://github.com$Link"
echo "$LinkFull"
wget "$LinkFull"
rm "$Filename"
