#!/bin/bash
#./two-player.sh file1.mkv file2.mkv
File1="$1"
File2="$2"
mpv "$File1" --geometry=45%+10+10 --ontop &
mpv "$File2" --geometry=45%+10+900 --no-audio --ontop &
