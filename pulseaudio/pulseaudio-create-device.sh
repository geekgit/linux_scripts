#!/bin/bash
ID=$(pacmd load-module module-null-sink sink_name="$1")
pacmd update-sink-proplist "$1" device.description="$2"
echo "$ID"