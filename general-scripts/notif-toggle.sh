#!/usr/bin/bash
# This program was written since makoctl dnd mode doesn't work
# for some strange ass reason

# Check if running
systemctl --user --quiet is-active mako
status=$?

if [ $status -eq 0 ] 
then
	notify-send "Disabling notifs..."
	sleep 2
	systemctl --user stop mako
	systemctl --user mask mako
else
	systemctl --user unmask mako
	systemctl --user start mako
	notify-send "Enabled notifs..."
fi

