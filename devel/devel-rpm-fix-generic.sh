#!/bin/bash
echo "rpm fix, generic"
File="$1"
UUID=$(uuidgen)
echo "Filename: $File"
cp "$File" "$HOME/$UUID-bad-spec.spec"
#%dir %attr(0755, root, root) "/"
sed -i '/\x25dir \x25attr\x280755, root, root\x29 \x22\x2F\x22/d' "$File"
#Requires:
sed -i '/Requires\x3A/d' "$File"
#Provides:
sed -i '/Provides\x3A/d' "$File"
cp "$File" "$HOME/$UUID-fix-spec.spec"
