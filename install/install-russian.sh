#!/bin/bash
write_locale_ru() {
	cd /var/lib/locales/supported.d/
	sudo touch ru
	sudo su -c 'echo "ru_RU.UTF-8 UTF-8" > ru'
	sudo su -c 'echo "ru_RU ISO-8859-5" >> ru'
	sudo su -c 'echo "ru_RU.CP1251 CP1251" >> ru'
	sudo su -c 'echo "ru_RU.KOI8-R KOI8-R" >> ru'
	sudo dpkg-reconfigure --frontend noninteractive locales
}
install_fonts() {
	sudo su -c 'echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections'
	sudo apt-get install -y cabextract xfonts-utils update-notifier-common fonts-droid-fallback ttf-mscorefonts-installer
}
install_ru_pack() {
	sudo apt-get install -y language-pack-ru language-pack-gnome-ru language-pack-ru-base language-pack-gnome-ru-base
}




write_locale_ru
install_fonts
install_ru_pack
