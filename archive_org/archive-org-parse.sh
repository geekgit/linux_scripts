#!/bin/bash
Link="$1"
curl -s "${Link}" | grep -E -io 'href="[^\"]+"' | awk -F\" '{print$2}' | grep -Ev "(http|https)://[a-zA-Z0-9./?=_%:-]*" | grep -v "/" | grep -v "#"
