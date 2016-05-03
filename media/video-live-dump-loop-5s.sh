#!/bin/bash
Url="$@"
Timeout="5s"
while true
do
	UUID=$(uuidgen)
	Date=$(date "+%d.%m (%Hh%Mm)")
	Filename="live-$Date-$UUID.mp4"
	echo "Saving $Url video to file $Filename..."
	youtube-dl --no-part --hls-use-mpegts "$Url" --output "$Filename"
	echo "Wait $Timeout..."
	sleep "$Timeout"
done
