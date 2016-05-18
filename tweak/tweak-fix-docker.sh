#!/bin/bash
UUID=$(uuidgen)
TempFixDir="$HOME/docker-fix-$UUID"
cd $TempFixDir
git clone https://github.com/geekgit/linux_configs
cd linux_configs
sudo cp ./etc/default/docker.overlayfs /etc/default/docker
sudo cp ./lib/systemd/system/docker.service /lib/systemd/system/docker.service
cd $HOME