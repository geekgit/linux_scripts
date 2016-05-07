#!/bin/bash
echo "RetroArch Unstable PPA (Ubuntu 16.04)"
sudo add-apt-repository -y ppa:libretro/testing
sudo geekgit-tweak-custom-ppa ppa:libretro/xenial/testing
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y retroarch retroarch-assets libretro-*
