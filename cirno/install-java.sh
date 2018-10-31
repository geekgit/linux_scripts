#!/bin/bash
CirnoPath="${HOME}/cirno/cirno_java"
mkdir -p "${CirnoPath}"
cd "${CirnoPath}"
wget --secure-protocol=TLSv1_2 --https-only "https://github.com/cirnobaka99999/cirno-java/releases/download/8u191/cirno-java8-installer.deb" -O "cirno-java8-installer.deb"
wget --secure-protocol=TLSv1_2 --https-only "https://github.com/cirnobaka99999/cirno-java/releases/download/8u191/cirno-java8-set-default.deb" -O "cirno-java8-set-default.deb"
sudo dpkg -i cirno-java8-installer.deb
sudo apt-get install -fy
sudo dpkg -i cirno-java8-set-default.deb
sudo apt-get install -fy

