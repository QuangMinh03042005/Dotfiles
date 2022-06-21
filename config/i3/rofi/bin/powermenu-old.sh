#!/usr/bin/env bash

## Copyright (C) 2020-2021 Aditya Shakya <adi1090x@gmail.com>
## Everyone is permitted to copy and distribute copies of this file under GNU-GPL3

DIR="$HOME/.config/i3"

rofi_command="rofi -show window -theme $DIR/rofi/themes/powermenu.rasi"

uptime=$(uptime -p | sed -e 's/up //g')

# Options
shutdown=""
reboot=""
lock=""
suspend=""
logout=""

# Variable passed to rofi
options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"
_msg="Options  -  [ enter : yes ] / [ n : no ]"

chosen="$(echo -e "$options" | $rofi_command -p "UP - $uptime" -dmenu -selected-row 2)"
case $chosen in
    $shutdown)
		ans=$($HOME/.config/i3/rofi/bin/confirm &)
		if [[ $ans == "" ]]; then
			poweroff
		elif [[ $ans == "n" ]]; then
			exit
        else
			rofi -theme ~/.config/i3/rofi/themes/askpass.rasi -e "$_msg"
        fi
        ;;
    $reboot)
		ans=$($HOME/.config/i3/rofi/bin/confirm &)
		if [[ $ans == "" ]]; then
			reboot
		elif [[ $ans == "n" ]]; then
			exit
        else
			rofi -theme ~/.config/i3/rofi/themes/askpass.rasi -e "$_msg"
        fi
        ;;
    $lock)
        ~/.config/i3/bin/i3lock.sh
        ;;
    $suspend)
		ans=$($HOME/.config/i3/rofi/bin/confirm &)
		if [[ $ans == "" ]]; then
			mpc -q pause
			amixer set Master mute
			betterlockscreen --suspend
		elif [[ $ans == "n" ]]; then
			exit
        else
			rofi -theme ~/.config/i3/rofi/themes/askpass.rasi -e "$_msg"
        fi
        ;;
    $logout)
		ans=$($HOME/.config/i3/rofi/bin/confirm &)
		if [[ $ans == "" ]]; then
			pkill -KILL -u minhcoder
		elif [[ $ans == "n" ]]; then
			exit
        else
			rofi -theme ~/.config/i3/rofi/themes/askpass.rasi -e "$_msg"
        fi
        ;;
esac
