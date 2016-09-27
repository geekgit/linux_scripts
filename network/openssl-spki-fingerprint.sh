#!/bin/bash
# cert.crt
PemFile="$1"
KeyFile="/tmp/$(uuidgen)-key.key"
KeyData=$(openssl x509 -noout -in "${PemFile}" -pubkey)
echo "Key Data: ${KeyData}"
echo "create ${KeyFile}..."
echo "${KeyData}" | openssl asn1parse -noout -inform pem -out "${KeyFile}"
echo "Key File: $(cat ${KeyFile})"
Fingerprint=$(openssl dgst -sha256 -binary "${KeyFile}" | openssl enc -base64)
echo "delete ${KeyFile}..."
rm "${KeyFile}"
echo "Fingerprint for HPKP: $Fingerprint"
