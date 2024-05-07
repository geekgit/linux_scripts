#!/bin/bash
Link="$1"
LinksRelativeFile="$(uuidgen)_links_relative.txt"
LinksAbsoluteFile="$(uuidgen)_links_absolute.txt"

curl -s "${Link}" | grep -E -io 'href="[^\"]+"' | awk -F\" '{print$2}' | grep -Ev "(http|https)://[a-zA-Z0-9./?=_%:-]*" | grep -v "/" | grep -v "#" >> "${LinksRelativeFile}" | grep -v "_archive.torrent" | grep -v "_files.xml" | grep -v "_meta.sqlite" | grep -v "_meta.xml"


while IFS= read -r link; do
	echo "${Link}/${link}" >> "${LinksAbsoluteFile}"
done < "${LinksRelativeFile}"
