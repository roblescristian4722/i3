#!/usr/bin/bash
convert -resize $(xdpyinfo | grep dimensions | cut -d\ -f7 | cut -dx -f1) lock.png lock.png
i3lock -t -i ~/.config/i3/lock.png
