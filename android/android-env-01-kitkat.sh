#!/bin/bash
cd $HOME
mkdir android-x86
cd $HOME/android-x86
repo init -u git://gitscm.sf.net/gitroot/android-x86/manifest -b kitkat-x86
repo sync
