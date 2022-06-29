#!/usr/bin/env bash 


export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
pidof ibus-daemon > /dev/null || ibus-daemon -drx

# festival --tts $HOME/.config/qtile/welcome_msg &
# lxsession &
# picom --config ~/.config/picom/picom.conf &
# /usr/bin/emacs --daemon &
# conky -c $HOME/.config/conky/doomone-qtile.conkyrc
feh --bg-fill ~/wallpapers/ubuntu_22-04.jpg
# volumeicon &
nm-applet &

### UNCOMMENT ONLY ONE OF THE FOLLOWING THREE OPTIONS! ###
# 1. Uncomment to restore last saved wallpaper
# xargs xwallpaper --stretch < ~/.xwallpaper &

# 2. Uncomment to set a random wallpaper on login
# find /usr/share/backgrounds/dtos-backgrounds/ -type f | shuf -n 1 | xargs xwallpaper --stretch &
# 3. Uncomment to set wallpaper with nitrogen
# nitrogen --restore &
