#!/bin/bash
Server="$1"
DumpFile="/tmp/$(uuidgen)-cert-dump.txt"
CertFile="/tmp/$(uuidgen)-cert.crt"
echo "Server: $Server"
Cert=$(echo "" | openssl s_client -connect "$Server" -prexit 2>/dev/null | sed -n -e '/BEGIN\ CERTIFICATE/,/END\ CERTIFICATE/ p')
echo "$Cert" > "$DumpFile"
#echo "$DumpFile created!"
#echo "===DUMP START==="
#cat "$DumpFile"
#echo "===DUMP END==="
Begin=$(grep -n -m 1 "BEGIN" "$DumpFile" |cut -f1 -d: )
End=$(grep -n -m 1 "END" "$DumpFile" |cut -f1 -d: )
#echo "Begin: $Begin End: $End"
sed -n "${Begin},${End}p" "$DumpFile" > "$CertFile"
#echo "$CertFile extracted"
#echo "CERT FILE:"
#cat "$CertFile"
echo "MD5: $(md5sum $CertFile | awk '{print $1}')"
echo "SHA-1: $(sha1sum $CertFile | awk '{print $1}')"
echo "SHA-256: $(sha256sum $CertFile | awk '{print $1}')"
echo "HPKP: $(/usr/local/bin/geekgit-openssl-spki-fingerprint $CertFile | grep HPKP | awk -F: '{print $2}' | xargs)"
