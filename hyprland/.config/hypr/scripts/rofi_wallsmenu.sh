#!/bin/bash

chosen=$(ls ~/Pictures/wallpapers | rofi -dmenu -p "Choose a wallpaper" -i)

chbg ~/Pictures/wallpapers/$chosen
