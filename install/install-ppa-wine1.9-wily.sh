#!/bin/bash
sudo dpkg --add-architecture i386
sudo add-apt-repository multiverse
sudo add-apt-repository universe
sudo geekgit-install-llvm-3.8-wily
sudo add-apt-repository -y ppa:wine/wine-builds
sudo geekgit-tweak-custom-ppa ppa:wine/wily/wine-builds
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y wine1.9


