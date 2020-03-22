#!/bin/bash
Url="$@"
youtube-dl "$Url" -o"%(id)s.%(ext)s"

