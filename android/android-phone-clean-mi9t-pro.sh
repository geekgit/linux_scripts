#!/bin/bash
adb_uninstall_xiaomi() {
	ApkName="$1"
	adb shell pm uninstall -k --user 0 "${ApkName}"
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
