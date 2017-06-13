#!/bin/bash
Url="$@"
youtube-dl --prefer-insecure --no-check-certificate --no-part --hls-use-mpegts "$Url"
