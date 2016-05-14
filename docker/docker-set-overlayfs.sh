#!/bin/bash
UUID=$(uuidgen)
TempFolder="$HOME/docker-set-overlayfs-$UUID"
mkdir "$TempFolder"
cd "$TempFolder"
git clone https://github.com/geekgit/linux_configs
cd linux_configs
sudo cp ./etc/default/docker.overlayfs /etc/default/docker
sudo chown root:root /etc/default/docker
sudo chmod o+r-wx /etc/default/docker
sudo chmod g+r-wx /etc/default/docker
sudo chmod u+rw+x /etc/default/docker
