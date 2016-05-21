#!/bin/bash
Text="$@"
UUID=$(uuidgen)
FileName="$HOME/voice-tts-default-$UUID.txt"
echo "(SayText \"$Text\")" > "$FileName"
cat "$FileName"
festival -b "$FileName"
rm "$FileName"
