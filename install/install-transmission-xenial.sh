#!/bin/bash
echo "Transmission on xenial (Ubuntu 16.04 LTS)"
sudo add-apt-repository -y ppa:transmissionbt/xenial/ppa
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y transmission
