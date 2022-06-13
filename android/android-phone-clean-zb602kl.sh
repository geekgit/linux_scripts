#!/bin/bash
adb_uninstall_asus() {
	ApkName="$1"
	adb shell pm uninstall -k --user 0 "${ApkName}"
}
#
adb_uninstall_asus com.android.stk
adb_uninstall_asus com.android.simappdialog
#adb_uninstall_asus com.asus.calculator
adb_uninstall_asus com.asus.ia.asusapp
adb_uninstall_asus com.asus.soundrecorder
adb_uninstall_asus com.facebook.appmanager
adb_uninstall_asus com.facebook.katana
adb_uninstall_asus com.facebook.orca
adb_uninstall_asus com.facebook.system
adb_uninstall_asus com.generalmobi.go2pay
adb_uninstall_asus com.google.android.apps.docs
#adb_uninstall_asus com.google.android.apps.messaging
adb_uninstall_asus com.google.android.apps.photos
adb_uninstall_asus com.google.android.apps.tachyon
adb_uninstall_asus com.google.android.calendar
adb_uninstall_asus com.google.android.googlequicksearchbox
adb_uninstall_asus com.google.android.ims
adb_uninstall_asus com.google.android.music
adb_uninstall_asus com.google.android.videos
adb_uninstall_asus com.google.android.youtube
adb_uninstall_asus com.instagram.android
adb_uninstall_asus com.pure.indosat.care
adb_uninstall_asus com.shopee.id
adb_uninstall_asus com.yandex.browser
adb_uninstall_asus id.co.babe
adb_uninstall_asus ru.yandex.searchplugin
