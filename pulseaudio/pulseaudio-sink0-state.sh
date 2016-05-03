#!/bin/bash
export LC_ALL=C
pactl list sinks | awk 'f; /Sink #0/ {f=1}' | grep State | awk '{print $2}'

