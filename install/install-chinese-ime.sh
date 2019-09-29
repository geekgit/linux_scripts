#!/bin/bash
write_locale_zh() {
	cd /var/lib/locales/supported.d/
	sudo touch zh
	sudo su -c 'echo "zh_CN.UTF-8 UTF-8" > zh'
	sudo su -c 'echo "zh_TW.UTF-8 UTF-8" >> zh'
	sudo su -c 'echo "zh_CN GB2312" >> zh'
	sudo su -c 'echo "zh_CN.GBK GBK" >> zh'
	sudo su -c 'echo "zh_CN.GB18030 GB18030" >> zh'
	sudo su -c 'echo "zh_TW Big5" >> zh'
	sudo dpkg-reconfigure --frontend noninteractive locales
	#sudo dpkg-reconfigure --frontend noninteractive locales
}
install_fonts() {
	sudo su -c 'echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections'
	sudo apt-get install -y cabextract xfonts-utils update-notifier-common xfonts-wqy fonts-arphic-ukai fonts-arphic-uming fonts-droid-fallback fonts-noto-cjk fonts-noto-cjk-extra fonts-sil-nuosusil fonts-arphic-bkai00mp fonts-arphic-bsmi00lp fonts-arphic-gbsn00lp fonts-arphic-gkai00mp fonts-wqy-microhei fonts-wqy-zenhei fonts-cns11643-kai fonts-cns11643-sung fonts-moe-standard-kai fonts-moe-standard-song ttf-mscorefonts-installer
	#TODO: Vera Sans YuanTi
}
install_zh_hans_pack() {
	sudo apt-get install -y language-pack-zh-hans language-pack-gnome-zh-hans language-pack-zh-hans-base language-pack-gnome-zh-hans-base
}
install_zh_hant_pack() {
	sudo apt-get install -y language-pack-zh-hant language-pack-gnome-zh-hant language-pack-zh-hant-base language-pack-gnome-zh-hant-base
}

install_ime() {
	sudo apt-get install -y anthy ibus-mozc ibus-anthy emacs-mozc fcitx-mozc fcitx-anthy uim uim-mozc uim-anthy scim scim-anthy ibus-libpinyin ibus-pinyin ibus-sunpinyin fcitx-libpinyin fcitx-pinyin fcitx-sunpinyin scim-pinyin hime hime-anthy
}


write_locale_zh
install_fonts
install_zh_hans_pack
install_zh_hant_pack
install_ime
