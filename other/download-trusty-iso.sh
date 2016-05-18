#!/bin/bash
URL="http://releases.ubuntu.com/14.04/"
UUID=$(uuidgen)
UbuntuFile="$UUID-ubuntu.html"
ListFile="$UUID-list.txt"
wget $URL -O "$UbuntuFile"
LinkSums=$(grep -Po '(?<=href=")[^"]*' "$UbuntuFile" | grep -v "http" | grep "SUMS" | grep -v "zsync" | grep -v "metalink" | grep -v "torrent" | sort | uniq)
LinkIso=$(grep -Po '(?<=href=")[^"]*' "$UbuntuFile" | grep -v "http" | grep "iso" | grep -v "zsync" | grep -v "metalink" | grep -v "torrent" | sort | uniq)
for Sum in $LinkSums
do
    echo "${URL}${Sum}" >> $ListFile
done
for Iso in $LinkIso
do
    echo "${URL}${Iso}" >> $ListFile
done
rm "$UbuntuFile"
sort -u "$UUID-list.txt"
aria2c --input-file="$ListFile" --max-concurrent-downloads=2 --max-connection-per-server=4 --follow-metalink=false --file-allocation=falloc
rm "$ListFile"
echo "gpg --verify MD5SUMS.gpg MD5SUMS"
gpg --verify MD5SUMS.gpg MD5SUMS
echo "gpg --verify SHA1SUMS.gpg SHA1SUMS"
gpg --verify SHA1SUMS.gpg SHA1SUMS
echo "gpg --verify SHA256SUMS.gpg SHA256SUMS"
gpg --verify SHA256SUMS.gpg SHA256SUMS
echo "MD5:"
md5sum -c MD5SUMS
echo "SHA1:"
sha1sum -c SHA1SUMS
echo "SHA256:"
sha256sum -c SHA256SUMS
