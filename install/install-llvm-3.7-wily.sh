#!/bin/bash
UUID=$(uuidgen)
AptFile="/etc/apt/sources.list.d/$UUID-llvm-3.7-wily.list"
sudo sh -c 'echo "deb http://llvm.org/apt/wily/ llvm-toolchain-wily-3.7 main" > $AptFile'
sudo sh -c 'echo "deb-src http://llvm.org/apt/wily/ llvm-toolchain-wily-3.7 main" >> $AptFile'
KeyFile="$HOME/$UUID-llvm-3.7.gpg.key"
KeyURL="http://llvm.org/apt/llvm-snapshot.gpg.key"
wget "$KeyURL" -O "$KeyFile"
sudo apt-key add "$KeyFile"
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y llvm-3.7 llvm-3.7-dev
