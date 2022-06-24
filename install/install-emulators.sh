#!/bin/bash
### update
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y snapd
sudo snap refresh
sudo apt-get install -y curl wget
sudo apt-get install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak update
### install
# retroarch - The official reference frontend for the libretro API
sudo apt-get install -y retroarch
# mame -  MAME is a hardware emulator. it faithfully reproduces the behaviour of many arcade machines
sudo apt-get install -y mame mame-tools mame-data mame-extra
# nestopia - Nintendo Entertainment System/Famicom emulator
sudo apt-get install -y nestopia
# zsnes - Emulator of the Super Nintendo Entertainment System
sudo apt-get install -y zsnes
# higan - Accurate multi-system emulator
sudo apt-get install -y higan
# ppsspp - PPSSPP is a PSP emulator that can run games at full HD resolution
sudo snap install --stable ppsspp-emu
# epsxe - ePSXe (enhanced PSX emulator) is a PlayStation video game console emulator for x86-based PC hardware with Microsoft Windows or Linux, as well as devices running Android
sudo snap install --candidate epsxe
# m64p -  m64p uses mupen64plus-gui, a brand new mupen64plus frontend written in Qt5. It supports all of the things you’d expect from a frontend (savestate management, pausing, screenshots, etc.). m64p comes bundled with paraLLEl-RDP for graphics. It should give you the best out-of-the-box experience available for N64 gaming.
sudo snap install --stable m64p
# visualboyadvance-m - Our goal is to improve upon VisualBoyAdvance by integrating the  best features from the various builds floating around.
sudo snap install --edge visualboyadvance-m
# RPCS3 - RPCS3 is a multi-platform open-source Sony PlayStation 3 (PS3) emulator and debugger written in C++ for Windows, Linux and BSD.
sudo snap install --edge rpcs3-emu
# fceux-gui - FCEUX is a Nintendo Entertainment System (NES), Famicom, Famicom Disk System (FDS), and Dendy emulator. It supports NTSC (USA/JPN), PAL (European), and NTSC-PAL Hybrid modes.
sudo snap install --edge fceux-gui
# melonds - melonDS aims at providing fast and accurate Nintendo DS emulation.
sudo snap install --edge melonds
# mgba - mGBA is an emulator for running Game Boy Advance games. It aims to be faster and more accurate than many existing Game Boy Advance emulators, as well as adding features that other emulators lack. It also supports Game Boy and Game Boy Color games
sudo snap install --edge mgba
# dolphin - Dolphin is an emulator for two recent Nintendo video game consoles: the GameCube and the Wii.
sudo snap install --edge dolphin-emulator
# yuzu - yuzu is an experimental open-source emulator for the Nintendo Switch from the creators of Citra.
sudo snap install --stable yuzu
# citra - Citra is an experimental open-source Nintendo 3DS emulator/debugger written in C++.
sudo snap install --stable citra-emu
# pcsx2 - PCSX2 is a free and open-source PlayStation 2 (PS2) emulator. Its purpose is to emulate the PS2's hardware, using a combination of MIPS CPU Interpreters, Recompilers and a Virtual Machine which manages hardware states and PS2 system memory.
pcsx2url=$(curl -s "https://api.github.com/repos/PCSX2/pcsx2/releases" | grep "browser_download_url" | grep "linux-AppImage-64bit-wxWidgets.AppImage" | awk -F\" '{print $4}' | sort -r | head -n1)
mkdir -p "$HOME/pcsx2"
wget  --secure-protocol=TLSv1_3 --https-only "${pcsx2url}" -P "$HOME/pcsx2"
chmod a+rx-w "$HOME/pcsx2/"*.AppImage
# blastem - BlastEm is an open source, higly accurate emulator for the Genesis/Megadrive that runs on modest hardware.
blastemurl="https://www.retrodev.com/blastem/blastem64-0.6.2.tar.gz"
mkdir -p "$HOME/blastem"
wget  --secure-protocol=TLSv1_2 --https-only "${blastemurl}" -P "$HOME/blastem"
tar -xvzf "$HOME/blastem/blastem64-0.6.2.tar.gz" -C "$HOME/blastem"
# snes9x - Snes9x is a portable, freeware Super Nintendo Entertainment System (SNES) emulator.
sudo flatpak install -y flathub com.snes9x.Snes9x
# bsnes - bsnes is a Super Nintendo emulator with 100% compatibility, focusing on features and ease of use.
sudo flatpak install -y flathub dev.bsnes.bsnes
# ares - ares is a cross-platform, open source, multi-system emulator, focusing on accuracy and preservation.
sudo flatpak install -y flathub dev.ares.ares
# Kega Fusion - An emulator for Sega 8 and 16-bit consoles
sudo flatpak install -y flathub com.carpeludum.KegaFusion
# GB Enhanced+ - A Game Boy (Color, Advance) emulator
sudo flatpak install -y flathub com.github.shonumi.gbe-plus
# DOSBox-X - DOSBox-X is an open-source DOS emulator for running DOS games and applications. DOS-based Windows such as Windows 3.x and Windows 9x are officially supported. Compared to DOSBox, DOSBox-X is much more flexible and provides more features.
sudo flatpak install -y flathub com.dosbox_x.DOSBox-X
# xemu - Original Xbox Emulator.
sudo flatpak install -y flathub app.xemu.xemu
# Ryujinx - A Nintendo Switch Emulator.
sudo flatpak install -y flathub org.ryujinx.Ryujinx
# Mednaffe - A front-end (GUI) for mednafen emulator (included)
sudo flatpak install -y flathub com.github.AmatCoder.mednaffe
# DuckStation - PlayStation 1/PSX emulator.
sudo flatpak install -y org.duckstation.DuckStation
