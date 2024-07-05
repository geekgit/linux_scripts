#!/bin/bash
adb_uninstall_xiaomi() {
	ApkName="$1"
	echo "$1:"
	adb shell pm uninstall -k --user 0 "${ApkName}"
	echo "==="
}
adb_disable_xiaomi() {
	ApkName="$1"
	echo "$1:"
	adb shell pm disable-user "${ApkName}"
	echo "==="
}
# Netflix
#adb_uninstall_xiaomi com.netflix.ninja
# Amazon Prime
#adb_uninstall_xiaomi com.amazon.amazonvideo.livingroom
###
# Youtube
adb_uninstall_xiaomi com.google.android.youtube.tv
adb_uninstall_xiaomi com.google.android.youtube.tvmusic
# Xiaomi Services
adb_uninstall_xiaomi android.autoinstalls.config.xioami.mibox3
adb_uninstall_xiaomi com.mitv.tvhome.atv
adb_uninstall_xiaomi com.mitv.tvhome.michannel
adb_uninstall_xiaomi com.miui.tv.analytics
adb_uninstall_xiaomi com.xiaomi.android.tvsetup.partnercustomizer
adb_uninstall_xiaomi com.xiaomi.mitv.updateservice
adb_uninstall_xiaomi mitv.service
adb_uninstall_xiaomi com.mitv.tvhome.mitvplus
