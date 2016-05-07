#!/bin/bash
echo "RetroArch Stable PPA (Ubuntu 16.04)"
sudo add-apt-repository -y ppa:libretro/stable
sudo geekgit-tweak-custom-ppa ppa:libretro/xenial/stable
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y retroarch retroarch-assets libretro-*
