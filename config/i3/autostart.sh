#!/bin/bash

# Wallpaper
feh --bg-fill ~/wallpapers/pacman-macchiato.png &

# Polybar
sh $HOME/.config/polybar/launch.sh &

# Configura keyboard repeat speed
xset r rate 200 36 &

# cpu power
cpupower-gui -p &
 
killall gsettings-helper &

# launch ibus-bamboo
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
pidof ibus-daemon > /dev/null || ibus-daemon -drx

# Picom
# picom --config ~/.config/picom/picom.conf 
