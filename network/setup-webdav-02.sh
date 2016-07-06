#!/bin/bash
echo "saving changes... [02]"
#
ConfigName="$1"
ApacheConfigPath="/etc/apache2/apache2.conf"
ApacheBackup="/etc/apache2/apache2.conf.$(uuidgen).backup"
sudo cp "$ApacheConfigPath" "$ApacheBackup"
sudo cat "$ConfigName" >> "$ApacheConfigPath"
