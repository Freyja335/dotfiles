#!/bin/bash
picom --daemon &
nitrogen --restore &
polybar &
nm-applet &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
cbatticon -n -u 60 &
volumeicon &
