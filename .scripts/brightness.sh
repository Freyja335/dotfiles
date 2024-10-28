#!/bin/bash

# Use brightnessctl to naturally adjust laptop screen brightness and send a notification

currentbrightness=$(brightnessctl -m | awk -F, '{print substr($4, 0, length($4)-1)}')

send_notification() {
	brightness=$(brightnessctl -m | awk -F, '{print substr($4, 0, length($4)-1)}')
	dunstify -a "Backlight" -u low -r 9994 -h int:value:"$brightness" -i "brightness" "Brightness" "Currently at $brightness%" -t 1000
}

case $1 in
	up)
		brightnessctl set 5%+
		send_notification "$1"
		;;
	down)
		brightnessctl set 5%-
		send_notification "$1"
		;;
esac
