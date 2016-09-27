#!/bin/bash
# cert.crt
KeyFile="$1"
echo "Public key: $KeyFile"
HPKP=$(/usr/local/bin/geekgit-openssl-spki-fingerprint "$KeyFile" | tail -n1 | awk -F: '{print $2}' | xargs)
echo "HPKP: ${HPKP}"
echo "Apache config for HPKP:"
ConfigLine="Header set Public-Key-Pins \"pin-sha256=\\\"${HPKP}\\\"; max-age=2592000; includeSubDomains\""
echo "${ConfigLine}"
