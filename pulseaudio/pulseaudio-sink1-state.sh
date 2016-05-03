#!/bin/bash
export LC_ALL=C
pactl list sinks | awk 'f; /Sink #1/ {f=1}' | grep State | awk '{print $2}'

