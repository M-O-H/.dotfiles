#!/bin/bash

WALLPAPER_DIR="$HOME/Media/wallpaper"

choice=$(ls "$WALLPAPER_DIR" | rofi -dmenu -p "Wallpaper")

[ -z "$choice" ] && exit 0

hyprctl hyprpaper unload all
hyprctl hyprpaper preload "$WALLPAPER_DIR/$choice"
hyprctl hyprpaper wallpaper ",$WALLPAPER_DIR/$choice"
