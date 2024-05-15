#!/bin/bash
cd "$HOME"
rm .gitconfig
wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/home/username/nohooks.gitconfig" -O .gitconfig
sudo chmod a+r-wx .gitconfig
sudo chattr +i .gitconfig