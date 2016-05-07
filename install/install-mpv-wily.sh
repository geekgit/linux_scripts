#!/bin/bash
echo "mpv on wily (Ubuntu 15.10)"
sudo add-apt-repository -y ppa:mc3man/ffmpeg-test1
sudo geekgit-tweak-custom-ppa ppa:mc3man/wily/ffmpeg-test1
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y ffmpeg mpv audacity fdk-aac libass
