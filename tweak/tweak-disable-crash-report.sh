#!/bin/bash
# 1) Clear reports
echo "rm /var/crash/*"
sudo rm /var/crash/*
# 2) /etc/default/apport fix
echo "/etc/default/apport fix"
sudo chattr -i /etc/default/apport
sudo sh -c "echo 'enabled=0' > /etc/default/apport"
sudo chattr +i /etc/default/apport
# 3) systemd fix
echo "systemd fix"
sudo systemctl stop apport.service
sudo systemctl disable apport.service
sudo systemctl mask apport.service