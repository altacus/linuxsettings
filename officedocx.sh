#!/bin/bash
# xrandr --output DP-3 --pos 0x0 --mode 2560x1440 --scale 1.125x1.125 --panning 0x0+0+0 
# xrandr --output HDMI-1 --pos 2880x0 --mode 2560x1440 --scale 1.125x1.125 --panning 0x0+0+0
# xrandr --output eDP-1 --pos 1440x1620 --mode 3840x2400 --scale 0.5x0.5 --panning 0x0+0+0 
xrandr | grep " connected " | grep -v "eDP" | awk '{ print $1  " " length($1) }' | sort -n | awk '{ print$1 }' | xargs printf " --fb 6700x4070 --output %s --pos 0x0 --mode 2560x1440 --scale 1.125x1.125 --output %s --pos 2880x0 --mode 2560x1440 --scale 1.125x1.125 --output eDP-1 --mode 3840x2400 --pos 1440x1620 --scale 0.5x0.5 " | xargs xrandr
