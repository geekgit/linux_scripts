#!/bin/bash
echo "pip (Python 3)"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y python3-pip
echo "pip tools..."
sudo pip3 install --upgrade youtube_dl speedtest-cli
