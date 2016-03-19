#!/bin/bash
echo "stop iwlmvm module"
sudo sh -c "rmmod -f iwlmvm"
echo "stop iwlwifi module"
sudo sh -c "rmmod -f iwlwifi"
echo "stop hp_wireless module"
sudo sh -c "rmmod -f hp_wireless"
echo "stop cfg80211 module"
sudo sh -c "rmmod -f cfg80211"
echo "blacklisting module"
sudo sh -c "echo '# Wireless blacklist' >> /etc/modprobe.d/blacklist.conf"
sudo sh -c "echo 'install iwlmvm /bin/false' >> /etc/modprobe.d/blacklist.conf"
sudo sh -c "echo 'install iwlwifi /bin/false' >> /etc/modprobe.d/blacklist.conf"
sudo sh -c "echo 'install hp_wireless /bin/false' >> /etc/modprobe.d/blacklist.conf"
sudo sh -c "echo 'install cfg80211 /bin/false' >> /etc/modprobe.d/blacklist.conf"
sudo update-initramfs -u