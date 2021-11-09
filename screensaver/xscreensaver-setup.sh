#!/bin/bash
/bin/echo $(/bin/date) >> /var/log/xscreensaver.log
/usr/bin/xscreensaver -verbose -no-splash >> /var/log/xscreensaver.log
