#!/bin/bash
Text="$@"
UUID=$(uuidgen)
FileName="$HOME/voice-tts-ru-$UUID.txt"
echo "(voice_msu_ru_nsh_clunits)" > "$FileName"
echo "(SayText \"$Text\")" >> "$FileName"
cat "$FileName"
festival -b "$FileName"
rm "$FileName"
