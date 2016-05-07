#!/bin/bash
PPA="$@" # ppa:name1/name2 -> ppa:name1/codename/name2
Distro=$(lsb_release -a 2>/dev/null | grep "Distributor ID:" | awk -F: '{print $2}' | awk '{print $1}' | tr '[:upper:]' '[:lower:]')
Codename=$(lsb_release -a 2>/dev/null | grep "Codename" | awk '{print $2}')
NamePart=$(echo $PPA | awk -F: '{print $2}') # name1/codename/name2
Name1=$(echo $NamePart | awk -F/ '{print $1}') # name1
CodenameNew=$(echo $NamePart | awk -F/ '{print $2}') # codename
Name2=$(echo $NamePart | awk -F/ '{print $3}') # name2
PPAPath="/etc/apt/sources.list.d/$Name1-$Distro-$Name2-$Codename.list"
Url="deb http://ppa.launchpad.net/$Name1/$Name2/$Distro $CodenameNew main"
echo "$Url -> $PPAPath"
echo "$Url" > "$PPAPath"