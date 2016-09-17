#!/bin/bash

# https://.../rss.xml
RSSUrl="$1"
# /home/user/folder
ArchiveFolder="$2"
# /home/user/folder/log.txt
LogFile="$3"

mkdir -p "$ArchiveFolder"
cd "$ArchiveFolder"
rm *
echo "$(date)" &> "$LogFile"

Header="Accept: text/html"
UserAgent="$(/usr/local/bin/geekgit-generate-browser-user-agent)"

echo "Header: $Header" &>> "$LogFile"
echo "UserAgent: $UserAgent" &>> "$LogFile"
echo "$RSSUrl -> $ArchiveFolder" &>> "$LogFile"

wget --header="$Header" --user-agent="$UserAgent" "$RSSUrl" --secure-protocol=TLSv1_2 --https-only -O "rss.xml" &>> "$LogFile"

echo "rss.xml content:" &>> "$LogFile"
cat "rss.xml" &>> "$LogFile"
VideoUrls=$(grep -Po '(?<=href=")[^"]*' "rss.xml" | tr "\n" " ")
echo "Video: $VideoUrls" &>> "$LogFile"

echo "$(date), Start loop..." &>> "$LogFile"
for VideoUrl in $VideoUrls
do
	echo "$(date), Download $VideoUrl..." &>> "$LogFile"
	/usr/local/bin/youtube-dl --verbose "$VideoUrl"  &>> "$LogFile"
done
