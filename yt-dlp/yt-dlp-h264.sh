#!/bin/bash
Url="$@"
yt-dlp -f 'bv*[ext=mp4]+ba[ext=m4a]' "$Url"
