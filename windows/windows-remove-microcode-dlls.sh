#!/bin/bash
sudo cp ./Windows/System32/mcupdate_AuthenticAMD.dll $HOME/mcupdate_AuthenticAMD.dll.bak
sudo cp ./Windows/System32/mcupdate_GenuineIntel.dll $HOME/mcupdate_GenuineIntel.dll.bak
sudo rm ./Windows/System32/mcupdate_AuthenticAMD.dll
sudo rm ./Windows/System32/mcupdate_GenuineIntel.dll
