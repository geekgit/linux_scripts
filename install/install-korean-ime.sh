#!/bin/bash
write_locale_ko() {
	cd /var/lib/locales/supported.d/
	sudo touch ko
	sudo su -c 'echo "ko_KR.UTF-8 UTF-8" > ko'
	sudo su -c 'echo "ko_KR.EUC-KR EUC-KR" >> ko'
	sudo dpkg-reconfigure --frontend noninteractive locales
	#sudo dpkg-reconfigure --frontend noninteractive locales
}
install_fonts() {
	sudo su -c 'echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections'
	sudo apt-get install -y cabextract xfonts-utils update-notifier-common fonts-alee fonts-lexi-gulim fonts-lexi-saebom ttf-mscorefonts-installer
}
install_ko_pack() {
	sudo apt-get install -y language-pack-ko language-pack-gnome-ko language-pack-ko-base language-pack-gnome-ko-base
}
install_ime() {
	sudo apt-get install -y anthy ibus-mozc ibus-anthy emacs-mozc fcitx-mozc fcitx-anthy uim uim-mozc uim-anthy scim scim-anthy fcitx-hangul ibus-hangul scim-tables-ko nabi
}


write_locale_ko
install_fonts
install_ko_pack
install_ime
