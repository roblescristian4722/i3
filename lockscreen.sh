#!/usr/bin/bash
convert -resize $(xdpyinfo | grep dimensions | cut -d\ -f7 | cut -dx -f1) ~/Pictures/.wallpapers/lock.png ~/Pictures/.wallpapers/lock.png
i3lock -t -i ~/Pictures/.wallpapers/lock.png
