#!/bin/bash
Url="$@"
yt-dlp --no-part --hls-use-mpegts "$Url"
