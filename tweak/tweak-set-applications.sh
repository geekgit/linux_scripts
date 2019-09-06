#!/bin/bash
cd /usr/share/applications/
#ffplay
sudo wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/usr/share/applications/ffplay.desktop" -O ffplay.desktop
#mpv
sudo wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/usr/share/applications/mpv.desktop" -O mpv.desktop
#BrowserSelector
sudo wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/usr/share/applications/BrowserSelector.desktop" -O BrowserSelector.desktop
#Brave
sudo wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/usr/share/applications/brave-browser.desktop" -O brave-browser.desktop
#Chromium
sudo wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/usr/share/applications/chromium-browser.desktop" -O chromium-browser.desktop
#Opera Developer
sudo wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/usr/share/applications/opera-developer.desktop" -O opera-developer.desktop
#Vivaldi
sudo wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/usr/share/applications/vivaldi-stable.desktop" -O vivaldi-stable.desktop
#defaults.list
sudo wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/usr/share/applications/defaults.list" -O defaults.list
