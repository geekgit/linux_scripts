#!/bin/bash
UUID=$(uuidgen)
Folder="$HOME/$UUID-appstream-fix"
mkdir "$Folder"
cd "$Folder"
wget "https://launchpad.net/ubuntu/+archive/primary/+files/appstream_0.9.4-1ubuntu1_amd64.deb" -O appstream-fix.deb
wget "https://launchpad.net/ubuntu/+archive/primary/+files/libappstream3_0.9.4-1ubuntu1_amd64.deb" -O libappstream-fix.deb
sudo dpkg -i appstream-fix.deb libappstream-fix.deb
sudo apt-get install -fy
rm appstream-fix.deb
rm libappstream-fix.deb
cd $HOME
