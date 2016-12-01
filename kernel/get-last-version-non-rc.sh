#!/bin/bash
VersionList="$HOME/kernel-list-parsed.txt"
LastNonRc=$(cat "$VersionList" | grep -v "rc" | sort --version-sort | tail -n1)
echo "$LastNonRc"
