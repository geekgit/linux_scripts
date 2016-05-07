#!/bin/bash
echo "mpv on xenial (Ubuntu 16.04 LTS)"
sudo add-apt-repository -y ppa:mc3man/mpv-tests
sudo geekgit-tweak-custom-ppa ppa:mc3man/xenial/mpv-tests
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y mpv libfdk-aac1 libfdk-aac-dev
