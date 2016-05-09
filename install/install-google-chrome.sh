#!/bin/bash
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O $HOME/chrome.deb

read -p "Install Google Chrome? (chrome.deb)"
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo dpkg -i $HOME/chrome.deb
	sudo apt-get install -fy
fi

rm $HOME/chrome.deb
