#!/bin/bash
echo "stop module"
sudo sh -c "rmmod -f bluetooth; exit 0;"
echo "blacklisting module"
sudo sh -c "# Webcam blacklist >> /etc/modprobe.d/blacklist.conf"
# sudo sh -c "install videodev /bin/false >> /etc/modprobe.d/blacklist.conf"
# sudo sh -c "install videobuf2_core /bin/false >> /etc/modprobe.d/blacklist.conf"
# sudo sh -c "install videobuf2_memops  /bin/false >> /etc/modprobe.d/blacklist.conf"
# sudo sh -c "install videobuf2_vmalloc /bin/false >> /etc/modprobe.d/blacklist.conf"
sudo sh -c "install uvcvideo /bin/false >> /etc/modprobe.d/blacklist.conf"
sudo update-initramfs -u
