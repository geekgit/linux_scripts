#!/bin/bash
echo "stop uvcvideo module"
sudo sh -c "rmmod -f uvcvideo"
echo "blacklisting module"
sudo sh -c "echo '# Webcam blacklist' >> /etc/modprobe.d/blacklist.conf"
sudo sh -c "echo 'install uvcvideo /bin/false' >> /etc/modprobe.d/blacklist.conf"
sudo update-initramfs -u
# P.S. Also: videodev videobuf2_core videobuf2_memops videobuf2_vmalloc