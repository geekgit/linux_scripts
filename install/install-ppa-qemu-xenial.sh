#!/bin/bash
echo "qemu PPA (Ubuntu 16.04)"
sudo add-apt-repository -y ppa:serge-hallyn/virt
sudo geekgit-tweak-custom-ppa ppa:serge-hallyn/xenial/virt
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y qemu lxc lxcfs libvirt libcap2
