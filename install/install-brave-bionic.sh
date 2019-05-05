#!/bin/bash
CurrPath="${PWD}"
TmpPath="${HOME}/brave-key-$(uuidgen)"
mkdir -p "${TmpPath}"
cd "${TmpPath}"
wget --secure-protocol=TLSv1_2 --https-only "https://brave-browser-apt-release.s3.brave.com/brave-core.asc" -O "brave-core.asc"
sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add "brave-core.asc"
#
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ bionic main" | sudo tee /etc/apt/sources.list.d/brave-browser-release-bionic.list
sudo apt-get update
sudo apt-get install -y brave-browser
cd "${CurrPath}"
rm -rf "${TmpPath}"
