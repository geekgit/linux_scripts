#!/bin/bash
echo "pip (Python 2)"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y python-pip
echo "pip tools..."
#sudo pip install --upgrade youtube_dl speedtest-cli
sudo pip2 install --upgrade youtube_dl speedtest-cli
