#!/usr/bin/bash

# Parse options
LIGHT=""
while getopts "l" option; do
  case $option in
  l) LIGHT="-l" ;;
  \?)
    echo "Error: Invalid option -$OPTARG" >&2
    exit 1
    ;;
  esac
done

# Shift past options
shift $((OPTIND - 1))

# Get image argument
IMG=$1
if [ -z "$IMG" ]; then
  echo "$0: Usage: $0 [-l] /path/to/image"
  exit 1
fi

# Clear pywal cache
rm -rf ~/.cache/wal

# Run pywal
if [ -n "$LIGHT" ]; then
  wal --vte -n -i "$IMG" $LIGHT
else
  wal --vte -n -i "$IMG"
fi

# symlink theme for quickshell
ln -sf ~/.cache/wal/kurukurubar.js ~/.config/quickshell/legacy/Themes/kurukurubar.js

# Reload hyprland config
hyprctl reload

# Set wallpaper
swww img "$IMG" -t grow 
