#!/bin/bash
DebPath="$1"
RPMName="$2"
RPMNameTemp="temp-$RPMName"
echo "deb -> rpm"
echo "input, deb: $DebPath"
echo "output, rpm: $RPMName"
alien --to-rpm --keep-version $DebPath
mv *.rpm "RPMNameTemp"
export EDITOR=/usr/local/bin/geekgit-devel-rpm-fix-generic
echo y | rpmrebuild -pe "$RPMNameTemp"
export EDITOR=/bin/nano
mv "$RPMNameTemp" "$RPMName"
