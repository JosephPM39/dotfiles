#!/bin/sh
bash /home/josephpm/.config/scripts/peripheral_config.sh
setxkbmap -layout us -variant altgr-intl
feh --bg-fill /home/josephpm/Wallpapers/70.png
picom --experimental-backends &
