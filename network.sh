#!/bin/sh

hostname=$(nmcli connection show | awk '{print$1}' | head -n2 | tail -n1)
wifi="$(ip a | grep wlp2s0 | grep inet | wc -l)"

if [ $wifi = 1 ]; then
	echo "  $hostname | "
else
	echo "睊  | "
fi
