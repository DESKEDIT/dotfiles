#!/bin/bash

options="Shutdown\nReboot\nSuspend\nLogout\nLock"

chosen=$(echo -e "$options" | rofi -dmenu -p "Power Menu" -i)

sleep 0.1

case "$chosen" in
"Shutdown") systemctl poweroff ;;
"Reboot") systemctl reboot ;;
"Suspend") systemctl suspend ;;
"Logout") hyprctl dispatch exit ;;
"Lock") hyprlock ;;
esac
