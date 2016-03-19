#!/bin/bash
echo "stop module"
sudo sh -c "rmmod -f bluetooth; exit 0;"
echo "blacklisting module"
sudo sh -c "echo '# Bluetooth blacklist' >> /etc/modprobe.d/blacklist.conf"
sudo sh -c "echo 'install bluetooth /bin/false' >> /etc/modprobe.d/blacklist.conf"
sudo update-initramfs -u