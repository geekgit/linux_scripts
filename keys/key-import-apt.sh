#!/bin/bash
#Google Inc. (Linux Packages Signing Authority) <linux-packages-keymaster@google.com>
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6494C6D6997C215E

#Docker Release (CE deb) <docker@docker.com>
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7EA0A9C3F273FCD8

#Microsoft (Release signing) <gpgsecurity@microsoft.com>
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EB3E94ADBE1229CF

#Xamarin Public Jenkins (auto-signing) <releng@xamarin.com>
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A6A19B38D3D831EF
