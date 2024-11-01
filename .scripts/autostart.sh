#!/bin/bash
sleep 0.1 && picom --daemon &
nitrogen --restore &
polybar &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
dunst &
