#!/bin/bash
echo "obs-stable / wily"
sudo apt-add-repository -y ppa:obsproject/wily/obs-studio
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y ffmpeg obs-studio