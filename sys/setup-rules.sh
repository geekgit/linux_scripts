#!/bin/bash
cd /etc/udev/rules.d/
sudo wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/etc/udev/rules.d/00-rtlsdr.rules" -O 00-rtlsdr.rules
sudo wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/etc/udev/rules.d/01-temp-sensor.rules" -O 01-temp-sensor.rules
sudo wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/etc/udev/rules.d/02-nakasi.rules" -O 02-nakasi.rules
sudo wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/etc/udev/rules.d/03-iyokan-flash.rules" -O 03-iyokan-flash.rules
sudo wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/etc/udev/rules.d/04-iyokan-fastboot.rules" -O 04-iyokan-fastboot.rules
sudo wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/etc/udev/rules.d/05-iyokan-recovery-sideload-adb.rules" -O 05-iyokan-recovery-sideload-adb.rules
sudo wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/etc/udev/rules.d/06-huawei-e1550.rules" -O 06-huawei-e1550.rules
sudo wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/etc/udev/rules.d/07-huawei-e1550-modem-on.rules" -O 07-huawei-e1550-modem-on.rules
sudo wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/geekgit/linux_configs/master/etc/udev/rules.d/08-phone-000.rules" -O 08-phone-000.rules


