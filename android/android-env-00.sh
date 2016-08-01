#!/bin/bash
# OS: Ubuntu ~14.04 64bit
sudo apt-get update && apt-get upgrade -y && apt-get install -y software-properties-common
sudo apt-get install -y bison build-essential ccache curl flex gcc-multilib git git-core g++-multilib gnupg gperf lib32ncurses5-dev lib32z-dev libc6-dev-i386 libgl1-mesa-dev libx11-dev libxml2-utils openjdk-6-jdk python-mako squashfs-tools unzip wget x11proto-core-dev xsltproc zip zlib1g-dev 
cd /usr/local/bin
sudo wget https://storage.googleapis.com/git-repo-downloads/repo
sudo chmod a+rx-w repo
