#!/usr/bin/env bash

# Author: https://github.com/x0rzavi
# Description: Brightness manipulation
# Dependencies: acpilight

get_brightness () {
	brightness="$(brightnessctl get)"
	echo " $brightness%"
}

inc_brightness () {
	brightnessctl set +5% 	
	get_brightness

}

dec_brightness () {
	brightnessctl set 5%-
	get_brightness
}

show_help () {
	cat <<EOF
Usage: brightness.sh [options]
AVAILABLE OPTIONS:
  --get         get current brightness
  --inc         increase current brightness by +4
  --dec         decrease current brightness by -4
EOF
}

if [[ "$1" == "--get" ]]; then
	get_brightness
elif [[ "$1" == "--inc" ]]; then
	inc_brightness
elif [[ "$1" == "--dec" ]]; then
	dec_brightness
else
	show_help
fi
