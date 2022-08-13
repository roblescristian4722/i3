#!/bin/sh -e

# Take a screenshot
#flameshot screen -p /tmp/screen_locked.png

# Pixellate it 10x
#mogrify -scale 10% -scale 1000% /tmp/screen_locked.png

# Lock screen displaying this image.
#i3lock -i /tmp/screen_locked.png

i3lock -t -i $HOME/.config/i3/wallpapers/blade_runner_lock.png

# Turn the screen off after a delay.
sleep 3; pgrep i3lock && xset dpms force off && systemctl suspend
