#!/bin/bash
Maintainer="$(echo dGVsZWdyYW1kZXNrdG9wCg== | base64 -d)"
Repo="$(echo dGRlc2t0b3AK | base64 -d)"
URL="https://api.github.com/repos/${Maintainer}/${Repo}/releases/latest"
IncludeTag="$(echo dHNldHVwCg== | base64 -d)"
ExcludeTag="$(echo dHNldHVwMzIK | base64 -d)"

curl -s "${URL}" | grep -e "\"browser_download_url\"" | cut -f 1 -d ':' --complement | awk -F\" '{print $2}' | grep -v "${ExcludeTag}" | grep "${IncludeTag}" | grep tar | head -n1 | xargs
