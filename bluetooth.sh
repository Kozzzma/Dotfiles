#!/bin/sh

swch=$(echo -e "ON\nOFF" | dmenu -p "Bluetooth : " -l 2)

case "$swch" in
	ON) bluetoothctl power on
		dev=$(bluetoothctl devices | dmenu -p "Выберите устройство: " -l 10 | awk '{print$2}')
		bluetoothctl connect $dev;;
	OFF) bluetoothctl power off;;
esac
