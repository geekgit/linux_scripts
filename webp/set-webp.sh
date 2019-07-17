#!/bin/bash
cd /usr/share/thumbnailers
sudo wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/usr/share/thumbnailers/webp.thumbnailer" -O webp.thumbnailer
geekgit-tweak-reset-thumbnailers
