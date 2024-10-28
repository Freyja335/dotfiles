#!/bin/bash
sleep 0.1 && picom --daemon &
nitrogen --restore &
polybar &
nm-applet &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
cbatticon -l 20 -r 5 &
sleep 0.2 && volumeicon &
dunst &
