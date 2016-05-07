#!/bin/bash
echo "mesa PPA (Ubuntu 16.04)"
sudo add-apt-repository -y ppa:oibaf/graphics-drivers
sudo geekgit-tweak-custom-ppa ppa:oibaf/xenial/graphics-drivers
sudo apt-get update
sudo apt-get upgrade -y
