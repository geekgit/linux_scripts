#!/bin/bash
echo "xorg-edgers (Ubuntu 16.04)"
sudo add-apt-repository -y ppa:xorg-edgers/ppa
sudo geekgit-tweak-custom-ppa ppa:xorg-edgers/xenial/ppa
sudo apt-get update
sudo apt-get upgrade -y
