#!/bin/bash
echo "YEKT Time"

echo "[timedatectl] Set BIOS time to local time..."
sudo timedatectl set-local-rtc 1

echo "/etc/localtime -> /usr/share/zoneinfo/Etc/UTC"
sudo ln -sf /usr/share/zoneinfo/Asia/Yekaterinburg /etc/localtime

echo 'echo "Etc/UTC" -> /etc/timezone'
sudo sh -c 'echo "Asia/Yekaterinburg" > /etc/timezone'
