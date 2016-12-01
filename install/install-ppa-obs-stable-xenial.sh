#!/bin/bash
echo "obs-stable / xenial"
sudo add-apt-repository multiverse
sudo apt-add-repository -y ppa:obsproject/obs-studio
sudo geekgit-tweak-custom-ppa ppa:obsproject/xenial/obs-studio
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y ffmpeg obs-studio
