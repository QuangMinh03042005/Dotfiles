#!/bin/bash

killall -q i3bar
killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
 
polybar -c ~/.config/polybar-1/config.ini main &
