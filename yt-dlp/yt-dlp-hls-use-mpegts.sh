#!/bin/bash
Url="$@"
youtube-dl --no-part --hls-use-mpegts "$Url"
