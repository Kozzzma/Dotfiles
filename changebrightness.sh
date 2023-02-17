#!/bin/sh

function send_notification() {
	brightness=$(xbacklight -get)
	dunstify -a "changebrightness" -u low -r "9993" -h int:value:"$brightness" -i "brightness-$1" "Brightness: ${brightness}%" -t 2000
}
case $1 in
up)
	xbacklight -inc 10
	send_notification $1
	;;
down)
	xbacklight -dec 10
	send_notification $1
	;;

esac
