#!/bin/sh

pwr=$(bluetoothctl show | grep Powered | awk '{print$2}')
dev=$(bluetoothctl info | awk '{print$1}' | tail -n1)

if [ $pwr = yes ]; then
	if [ $dev != Missing ]; then
		echo "󰂱 | "
	else
		echo " | "
	fi
else
	echo " "
fi
