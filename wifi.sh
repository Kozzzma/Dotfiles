#!/bin/sh

bssid=$(nmcli -f BSSID,SSID,SIGNAL,RATE,BARS,SECURITY, dev wifi list | sed -n '1!p' | dmenu -p "Выберите WIFI: " -l 20 | cut -d' ' -f1)
pass=$(echo "" | dmenu -p "Введите пароль: ")
nmcli device wifi connect $bssid password $pass
