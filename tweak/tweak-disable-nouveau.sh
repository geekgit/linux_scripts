#!/bin/bash
echo "blacklisting nouveau"
sudo sh -c "echo '# nouveau blacklist' >> /etc/modprobe.d/blacklist.conf"
sudo sh -c "echo 'blacklist nouveau' >> /etc/modprobe.d/blacklist.conf"
sudo sh -c "echo 'blacklist lbm-nouveau' >> /etc/modprobe.d/blacklist.conf"
sudo sh -c "echo 'alias nouveau off' >> /etc/modprobe.d/blacklist.conf"
sudo sh -c "echo 'alias lbm-nouveau off' >> /etc/modprobe.d/blacklist.conf"
sudo update-initramfs -u
