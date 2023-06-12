#!/usr/bin/env bash

# Author: https://github.com/x0rzavi
# Description: Exit sway
# Dependencies: sway
# Theme: Catppuccin

# Variables
transparent=00000000
black=1E1E2E
flamingo=F2CDCD

swaynag \
	--text $flamingo \
	--background $black \
	--button-text $black \
	--button-background $flamingo \
	--border $transparent \
	--border-bottom $transparent \
	--border-bottom-size 0 \
	--button-border-size 0 \
	--button-padding 6 \
	-t warning \
	-f 'JetBrainsMono Nerd Font Bold 11' \
	-m 'Do you really want to EXIT sway?' -B 'YES' 'swaymsg exit' -s 'NO'
