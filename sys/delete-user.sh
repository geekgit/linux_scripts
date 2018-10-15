#!/bin/bash
Username="$1"
sudo deluser --remove-home "$Username"
