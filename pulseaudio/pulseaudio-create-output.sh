#!/bin/bash
pactl load-module module-virtual-sink sink_name="$1"
