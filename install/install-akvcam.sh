#!/bin/bash
download_config() {
	Filename="$1"
	sudo wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/etc/akvcam/${Filename}" -O "${Filename}"
}
fix_permissions() {
	Filename="$1"
	sudo chown root:root "${Filename}"
	sudo chmod g-rwx "${Filename}"
	sudo chmod o-rwx "${Filename}"
	sudo chmod u+rw-x "${Filename}"
}
setup_config() {
	Filename="$1"
	download_config "${Filename}"
	fix_permissions "${Filename}"
}

DriverVersion="5.3.18"
CommitHash="5f94c371c3bd7c170ab3d48c1a6fcb227671844c"
#deps
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y gcc make build-essential libelf-dev libkmod-dev v4l-utils
#
mkdir -p $HOME/git2
cd $HOME/git2
git clone https://github.com/webcamoid/akvcam
cd $HOME/git2/akvcam
git reset --hard "${CommitHash}"
cd $HOME/git2/akvcam/src
make -j$(nproc --all)
make -j$(nproc --all) clean
sudo mkdir -p /usr/src/akvcam-${DriverVersion}
sudo cp -ar * /usr/src/akvcam-${DriverVersion}
sudo dkms install akvcam/${DriverVersion}
#
sudo mkdir -p /etc/akvcam
cd /etc/akvcam
setup_config "config.ini"
setup_config "default_frame.bmp"
#
sudo sh -c 'echo akvcam > /etc/modules-load.d/akvcam.conf'
