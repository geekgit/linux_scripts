#!/bin/bash
Config="/etc/modprobe.d/blacklist.conf"
sudo echo "# Webcam blacklist" >> "$Config"
sudo echo "install videodev /bin/false" >> "$Config"
sudo echo "install videobuf2_core /bin/false" >> "$Config"
sudo echo "install videobuf2_memops /bin/false" >> "$Config"
sudo echo "install videobuf2_vmalloc /bin/false" >> "$Config"
sudo echo "install uvcvideo /bin/false" >> "$Config"
sudo update-initramfs -u
