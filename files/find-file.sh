#!/bin/bash
find / -type f 2>/dev/null | grep "$@"
