#!/bin/bash

# Wallpaper
feh --bg-fill ~/wallpapers/445618-pixel-art-computer-Linux-pixels-code-men-beard.jpg &

# Polybar
# sh $HOME/.config/polybar-1/launch.sh &
sh $HOME/.config/polybar-i3status/launch.sh &

# Configuration keyboard repeat speed
xset r rate 190 45 &

# cpu power
#cpupower-gui -p &
 
# launch ibus-bamboo
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
pidof ibus-daemon > /dev/null || ibus-daemon -drx


# Picom
# picom --config ~/.config/picom/picom.conf 

killall gsettings-helper &
