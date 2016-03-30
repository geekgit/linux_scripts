#!/bin/bash
ID=$(pactl load-module module-virtual-sink sink_name="$1")
echo "$ID"
