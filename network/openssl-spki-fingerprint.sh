#!/bin/bash
# cert.pem
PemFile="$1"
KeyFile="key.key"
openssl x509 -noout -in "${PemFile}" -pubkey | openssl asn1parse -noout -inform pem -out "${KeyFile}"
Fingerprint=$(openssl dgst -sha256 -binary "${KeyFile}" | openssl enc -base64)
echo "$PemFile -> $KeyFile -> $Fingerprint"
