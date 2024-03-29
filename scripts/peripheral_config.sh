#!/bin/bash

#=================== SCREENS CONFIG ===================
#xrandr --output DP-4 --mode 2560x1440 --rate 165 --primary
#xrandr --output HDMI-0 1366x768 --rate 60 --noprimary --top-of DP-4
#xrandr --output HDMI-0 --mode 1366x768 --rate 60 --noprimary --pos 683x0
#xranndr --output DP-4 --mode 2560x1440 --rate 165 --primary --pos 0x1080
#xrandr --output HDMI-0 --mode 1366x768 --rate 60 --noprimary --pos 683x0
#xrandr --output DP-4 --mode 3440x1440 --rate 165 --primary --pos 0x768
xrandr --output DP-4 --mode 3440x1440 --rate 165 --primary
xrandr --output DP-2 --mode 2560x1440 --rate 165 --noprimary --right-of DP-4 --rotate left
xrandr --dpi 16

#=================== MOUSE CONFIG ===================
xinput set-prop 'Logitech G502 HERO Gaming Mouse' 'libinput Accel Speed' -0.7
