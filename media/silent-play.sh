#!/bin/bash
Url="$@"
SoundTimeout="1s"
PkillTimeout="2s"
MPVTimeout="10s"
while true
do
	State=$(geekgit-pulseaudio-sink1-state)
	#echo "Sink State: $State"

	if [[ "$State" == "IDLE" ]]
	then
		pkill mpv
		sleep "$PkillTimeout"
		mpv $Url &
		sleep "$MPVTimeout"
	fi

	if [[ "$State" == "SUSPENDED" ]]
	then
		pkill mpv
		sleep "$PkillTimeout"
		mpv $Url &
		sleep "$MPVTimeout"
	fi
	sleep "$SoundTimeout"
done
