#!/bin/bash
echo "stop module"
sudo sh -c "rmmod -f bluetooth; exit 0;"
echo "blacklisting module"
sudo sh -c "# Bluetooth blacklist >> /etc/modprobe.d/blacklist.conf"
sudo sh -c "install bluetooth /bin/false >> /etc/modprobe.d/blacklist.conf"
sudo update-initramfs -u