#!/bin/bash
sudo dpkg --add-architecture i386
sudo add-apt-repository multiverse
sudo add-apt-repository universe
sudo geekgit-install-llvm-3.8-wily
sudo add-apt-repository -y ppa:ubuntu-wine/ppa
sudo geekgit-tweak-custom-ppa ppa:ubuntu-wine/wily/ppa
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y wine1.8


