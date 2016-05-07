#!/bin/bash
echo "M.A.M.E. PPA (Ubuntu 15.04)"
sudo add-apt-repository -y ppa:c.falco/mame
sudo geekgit-tweak-custom-ppa ppa:c.falco/vivid/mame
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y mame
