#!/bin/bash
# libx264-146 -> http://packages.ubuntu.com/wily/libx264-146
echo "obs-stable / wily"
sudo add-apt-repository multiverse
sudo apt-add-repository -y ppa:obsproject/obs-studio
sudo geekgit-tweak-custom-ppa ppa:obsproject/wily/obs-studio
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y ffmpeg obs-studio
