#!/bin/bash

chosen=$(ls ~/Pictures/wallpapers | rofi -dmenu -p "Choose a wallpaper")

chbg ~/Pictures/wallpapers/$chosen
