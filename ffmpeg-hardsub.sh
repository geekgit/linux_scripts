#!/bin/bash
Video="$1"
OutputFile=$(echo $Video | sed 's/mkv/mp4/g')
ffmpeg -i $Video -vcodec libx264 -preset slow -crf 22 -profile:v high -level:v 4.0 -acodec libmp3lame -ab 320k -vf subtitles=$Video $OutputFile
