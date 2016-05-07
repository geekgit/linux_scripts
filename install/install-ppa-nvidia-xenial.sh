#!/bin/bash
echo "nvidia driver PPA (Ubuntu 16.04)"
sudo add-apt-repository -y ppa:graphics-drivers/ppa
sudo geekgit-tweak-custom-ppa ppa:graphics-drivers/xenial/ppa
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y nvidia-364
