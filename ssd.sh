#!/bin/sh

ssd() {
	free="$(df -h /home | grep /dev | awk '{print $3}' | sed 's/G/Gb/')"
	perc="$(df -h /home/ | grep /dev | awk '{print $5}')"

	echo "$perc ($free)"
}
echo "  $(ssd) | "
