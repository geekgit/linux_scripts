#!/bin/bash
echo "UTC Time"

echo "[timedatectl] Set BIOS time to UTC..."
sudo timedatectl set-local-rtc 0

echo "/etc/localtime -> /usr/share/zoneinfo/Etc/UTC"
sudo ln -sf /usr/share/zoneinfo/Etc/UTC /etc/localtime

echo 'echo "Etc/UTC" -> /etc/timezone'
sudo sh -c 'echo "Etc/UTC" > /etc/timezone'
