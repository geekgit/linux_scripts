#!/usr/bin/expect
set timeout 19
spawn telnet 192.168.1.1
expect "Login: "
send "username"
send "\r"
expect "Password: "
send "password"
send "\r"
expect "(config)>"
send "interface WifiMaster0/AccessPoint0 down"
send "\r"
expect "(config)>"
send "interface WifiMaster0/AccessPoint0 mac address 00:00:00:00:00:00"
send "\r"
expect "(config)>"
send "interface WifiMaster0/AccessPoint0 up"
send "\r"
expect "(config)>"
send "exit"
send "\r"


