#!/bin/bash
cd /usr/share/applications/
#ffplay
sudo wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/usr/share/applications/ffplay.desktop" -O ffplay.desktop
#BrowserSelector
sudo wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/usr/share/applications/BrowserSelector.desktop" -O BrowserSelector.desktop
#defaults.list
sudo wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/usr/share/applications/defaults.list" -O defaults.list
