#!/bin/bash
DriverVersion="5.3.18"
CommitHash="5f94c371c3bd7c170ab3d48c1a6fcb227671844c"
#deps
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y gcc make build-essential libelf-dev libkmod-dev
#
mkdir -p $HOME/git2
cd $HOME/git2
git clone https://github.com/webcamoid/akvcam
cd $HOME/git2/akvcam
git reset --hard "${CommitHash}"
cd $HOME/git2/akvcam/src
make -j$(nproc --all)
make -j$(nproc --all) clean
sudo mkdir -p /usr/src/akvcam-${DriverVersion}
sudo cp -ar * /usr/src/akvcam-${DriverVersion}
sudo dkms install akvcam/${DriverVersion}

