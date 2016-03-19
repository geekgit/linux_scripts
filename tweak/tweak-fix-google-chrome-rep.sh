#!/bin/bash
sudo chattr -i /etc/apt/sources.list.d/google-chrome.list
sudo sh -c "echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' > /etc/apt/sources.list.d/google-chrome.list"
sudo chattr +i /etc/apt/sources.list.d/google-chrome.list
