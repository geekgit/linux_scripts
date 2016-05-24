#!/bin/bash
UUID=$(uuidgen)
AptFile="/etc/apt/sources.list.d/$UUID-llvm-wily.list"
sudo sh -c 'echo "deb http://llvm.org/apt/wily/ llvm-toolchain-wily main" > $AptFile'
sudo sh -c 'echo "deb-src http://llvm.org/apt/wily/ llvm-toolchain-wily main" >> $AptFile'
KeyFile="$HOME/$UUID-llvm.gpg.key"
KeyURL="http://llvm.org/apt/llvm-snapshot.gpg.key"
wget "$KeyURL" -O "$KeyFile"
sudo apt-key add "$KeyFile"
sudo apt-get update && sudo apt-get upgrade -y
