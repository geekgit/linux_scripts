#!/bin/bash
echo "pcsx2 PPA (Ubuntu 16.04)"
sudo add-apt-repository -y ppa:gregory-hainaut/pcsx2.official.ppa
sudo geekgit-tweak-custom-ppa ppa:gregory-hainaut/xenial/pcsx2.official.ppa
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y pcsx2
