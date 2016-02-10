#!/bin/bash
sudo service bluetooth stop
sudo update-rc.d -f bluetooth remove
sudo ifconfig wlan0 down
sudo cp /etc/rc.local /etc/rc.local.backup
sudo rm /etc/rc.local
sudo ./last-line.sh "sudo ifconfig wlan0 down" /etc/rc.local.backup /etc/rc.local
