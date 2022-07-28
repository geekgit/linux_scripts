#!/bin/bash
Url="$@"
yt-dlp -f 'bv*[ext=mp4][height=1080]+ba[ext=m4a]' "$Url"
