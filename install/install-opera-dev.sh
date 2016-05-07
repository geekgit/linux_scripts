#!/bin/bash
wget https://download1.operacdn.com/pub/opera-developer/ -O $HOME/opera.html
Link=$(grep -Po '(?<=href=")[^"]*' $HOME/opera.html)
Last=$(echo $Link | tr " " "\n" | sed 's|/||g' | grep -v "info" | sort | uniq | sort | tail -2 | head -1)
echo $Last
DebUrl="https://download1.operacdn.com/pub/opera-developer/$Last/linux/"
wget "$DebUrl" -O deb.html
Link2=$(grep -Po '(?<=href=")[^"]*' $HOME/deb.html)
amd64deb=$(echo $Link2 | tr " " "\n" | grep -v "../" | grep "deb" | grep "amd64" | sort | uniq | sort | head -1)
echo "$amd64deb"
DLUrl="https://download1.operacdn.com/pub/opera-developer/$Last/linux/$amd64deb"
echo "$DLUrl"
wget "$DLUrl" -O $HOME/opera-dev-amd64.deb

read -p "Install opera-dev-amd64.deb? ($amd64deb)"
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo dpkg -i $HOME/opera-dev-amd64.deb
	sudo apt-get install -fy
fi

rm $HOME/opera.html
rm $HOME/deb.html
rm $HOME/opera-dev-amd64.deb
