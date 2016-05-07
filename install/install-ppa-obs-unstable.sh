#!/bin/bash
echo "obs-unstable, current version"
sudo add-apt-repository multiverse
sudo apt-add-repository -y ppa:obsproject/obs-studio-unstable
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y ffmpeg obs-studio
