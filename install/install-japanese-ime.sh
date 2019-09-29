#!/bin/bash
write_locale_jp() {
	cd /var/lib/locales/supported.d/
	sudo touch ja
	sudo su -c 'echo "ja_JP.UTF-8 UTF-8" > ja'
	sudo su -c 'echo "ja_JP SJIS" >> ja'
	sudo su -c 'echo "ja_JP.EUC-JP EUC-JP" >> ja'
	sudo dpkg-reconfigure --frontend noninteractive locales
}
install_fonts() {
	sudo su -c 'echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections'
	sudo apt-get install -y cabextract xfonts-utils update-notifier-common fonts-mikachan fonts-takao-mincho fonts-takao-gothic fonts-takao fonts-ipafont-mincho fonts-ipafont-gothic fonts-ipafont-nonfree-jisx0208 fonts-ipafont-nonfree-uigothic ttf-mscorefonts-installer
}
install_jp_pack() {
	sudo apt-get install -y language-pack-ja language-pack-gnome-ja language-pack-ja-base language-pack-gnome-ja-base
}
install_ime() {
	sudo apt-get install -y anthy ibus-mozc ibus-anthy emacs-mozc fcitx-mozc fcitx-anthy uim uim-mozc uim-anthy scim scim-anthy
}


write_locale_jp
install_fonts
install_jp_pack
install_ime
