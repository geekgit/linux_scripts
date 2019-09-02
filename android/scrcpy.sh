#!/bin/bash
adb devices
scrcpy --always-on-top -t -b 2M -m1000 -S --window-title 'Android'
