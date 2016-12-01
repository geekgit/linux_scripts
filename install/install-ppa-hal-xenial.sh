#!/bin/bash
echo "zombie hal - Ubuntu 16.04"
sudo add-apt-repository -y ppa:mjblenner/ppa-hal
sudo geekgit-tweak-custom-ppa ppa:mjblenner/xenial/ppa-hal
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y hal hal-info
