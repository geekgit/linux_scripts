#!/bin/bash
adb_uninstall_xiaomi() {
	ApkName="$1"
	echo "$1:"
	adb shell pm uninstall -k --user 0 "${ApkName}"
	echo "==="
}
# Power
#adb_uninstall_xiaomi com.miui.powerkeeper
# Security
#adb_uninstall_xiaomi com.miui.securitycenter
# Quick Apps
#adb_uninstall_xiaomi com.miui.hybrid
# Emergency
#adb_uninstall_xiaomi com.android.emergency
#adb_uninstall_xiaomi com.android.cellbroadcastreceiver
# Sound recorder
#adb_uninstall_xiaomi com.android.soundrecorder
# MIUI browser
adb_uninstall_xiaomi com.android.browser
adb_uninstall_xiaomi com.android.providers.partnerbookmarks
# Google
adb_uninstall_xiaomi com.google.android.apps.docs
adb_uninstall_xiaomi com.google.android.apps.maps
# Widgets
adb_uninstall_xiaomi com.mi.android.personalassistant
# Bug Report
adb_uninstall_xiaomi com.miui.bugreport
# SIM Menu
adb_uninstall_xiaomi com.android.stk
adb_uninstall_xiaomi com.android.simappdialog
# Analytics, ads
adb_uninstall_xiaomi com.miui.analytics
adb_uninstall_xiaomi com.xiaomi.joyose
adb_uninstall_xiaomi com.my.games.vendorapp
adb_uninstall_xiaomi com.netflix.partner.activation
# Facebook
adb_uninstall_xiaomi com.facebook.appmanager
adb_uninstall_xiaomi com.facebook.katana
adb_uninstall_xiaomi com.facebook.orca
adb_uninstall_xiaomi com.facebook.system
adb_uninstall_xiaomi com.facebook.services
# ru apps
adb_uninstall_xiaomi ru.ozon.app.android
adb_uninstall_xiaomi ru.yandex.searchplugin
adb_uninstall_xiaomi com.allgoritm.youla
adb_uninstall_xiaomi com.yandex.zen
# more oem
adb_uninstall_xiaomi com.mi.globalbrowser
adb_uninstall_xiaomi com.miui.miservice
adb_uninstall_xiaomi com.miui.compass
adb_uninstall_xiaomi com.xiaomi.scanner
adb_uninstall_xiaomi com.zhiliaoapp.musically
adb_uninstall_xiaomi com.opera.preinstall
adb_uninstall_xiaomi com.opera.browser
adb_uninstall_xiaomi com.miui.notes
adb_uninstall_xiaomi com.miui.videoplayer
adb_uninstall_xiaomi com.miui.player
adb_uninstall_xiaomi com.xiaomi.midrop
adb_uninstall_xiaomi com.xiaomi.calendar
adb_uninstall_xiaomi com.miui.weather2
adb_uninstall_xiaomi com.alibaba.aliexpresshd
adb_uninstall_xiaomi com.xiaomi.mipicks
# some android stuff
adb_uninstall_xiaomi com.android.providers.downloads.ui
adb_uninstall_xiaomi com.google.android.apps.photos
adb_uninstall_xiaomi com.google.android.apps.tachyon
adb_uninstall_xiaomi com.google.android.videos
adb_uninstall_xiaomi com.google.android.youtube
#adb_uninstall_xiaomi com.google.android.gm
adb_uninstall_xiaomi com.android.chrome
adb_uninstall_xiaomi com.android.thememanager
adb_uninstall_xiaomi com.android.thememanager.module
