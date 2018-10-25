#!/bin/bash
UserAgent=$(geekgit-wget-www-useragent)
Header=$(geekgit-wget-www-header)
Uri="$1"
wget -E -H -k -K -p -e robots=off --header="$Header" --user-agent="$UserAgent" "$Uri"
