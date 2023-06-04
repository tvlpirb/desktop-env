#!/bin/sh

# Session
export XDG_SESSION_TYPE=wayland
export XDG_SESSION_DESKTOP=sway
export XDG_CURRENT_DESKTOP=sway

source /usr/local/bin/wayland_enablement.sh

systemd-cat --identifier=sway sway $@
