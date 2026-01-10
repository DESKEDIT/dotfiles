#!/bin/bash

chosen=$(ls ~/Pictures/wallpapers | rofi -dmenu -p "Choose a wallpaper" -i)

~/.config/hypr/scripts/chbg.sh ~/Pictures/wallpapers/$chosen
