#!/bin/bash
### update
sudo apt-get update
sudo apt-get upgrade -y
sudo snap refresh
### install
# retroarch
sudo apt-get install -y retroarch
# mame
sudo apt-get install -y mame mame-tools mame-data mame-extra
# ppsspp
sudo snap install --stable ppsspp-emu
# epsxe
sudo snap install --candidate epsxe
# m64p: mupen64plus-gui, paraLLEl-RDP
sudo snap install --stable m64p
# visualboyadvance-m
sudo snap install --edge visualboyadvance-m
# RPCS3
sudo snap install --edge rpcs3-emu
# fceux-gui
sudo snap install --edge fceux-gui
# melonds
sudo snap install --edge melonds
# mgba
sudo snap install --edge mgba
# dolphin
sudo snap install --edge dolphin-emulator
# dolphin
sudo snap install --stable yuzu
# pcsx2
pcsx2url=$(curl -s "https://api.github.com/repos/PCSX2/pcsx2/releases" | grep "browser_download_url" | grep "linux-AppImage-64bit-wxWidgets.AppImage" | awk -F\" '{print $4}' | sort -r | head -n1)
echo "${pcsx2url}"
# TODO pcsx2 DL
