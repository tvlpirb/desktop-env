#!/usr/bin/env bash

# Author: https://github.com/x0rzavi
# Description: Powermenu implemented with bmenu
# Dependencies: bemenu, libnotify, elogind
# Theme: Catppuccin

# Variables
black="#1E1E2E" 
sky="#89DCEB"
mauve="#DDB6F2" 
peach="#F8BD96"
green="#ABE9B3"
options="󰜺 Cancel\n Suspend\n Hibernate\n󰌾 Lock\n󰍃 Logout\n󰑓 Reboot\n󰐥 Shutdown"
selected=$(echo -e $options \
	| bemenu \
	-i \
	--prefix '' \
	--prompt 'POWERMENU  ' \
	--list 7 \
	--fn 'JetBrainsMono Nerd Font Bold 11.5' \
	--tb $black \
	--tf $sky \
	--fb $black \
	--ff $mauve \
	--nb $black \
	--nf $peach \
	--hb $black \
	--hf $green)

if [[ "$selected" == *"Cancel"* ]]; then
	:
elif [[ "$selected" == *"Suspend"* ]]; then
	notify-send "     Suspending"
	#sleep 5
	systemctl suspend
elif [[ "$selected" == *"Hibernate"* ]]; then
	notify-send "     Hibernating"
	sway_lock.sh
	#sleep 5
	systemctl hibernate
elif [[ "$selected" == *"Lock"* ]]; then
	sway_lock
elif [[ "$selected" == *"Logout"* ]]; then
	sway_exit
elif [[ "$selected" == *"Shutdown"* ]]; then
	notify-send "  󰐥   Shutting down"
	#sleep 5
	systemctl poweroff
elif [[ "$selected" == *"Reboot"* ]]; then
	notify-send "  󰑓   Rebooting"
	#sleep 5
	systemctl reboot
fi
