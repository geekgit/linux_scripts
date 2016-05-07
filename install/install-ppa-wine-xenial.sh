#!/bin/bash
echo "wine PPA (Ubuntu 16.04)"
sudo add-apt-repository -y ppa:ubuntu-wine/ppa
sudo geekgit-tweak-custom-ppa ppa:ubuntu-wine/xenial/ppa
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y wine1.8
