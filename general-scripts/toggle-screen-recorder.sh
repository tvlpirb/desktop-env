#!/bin/bash 

pid=`pgrep wf-recorder`
status=$?

if [ $status != 0 ] 
then 
  notify-send "Recording started..."
  wf-recorder -f $(xdg-user-dir VIDEOS)/$(date +'recording_%Y-%m-%d-%H%M%S.mkv') --audio=alsa_output.pci-0000_06_00.6.HiFi__hw_Generic_1__sink -t -c hevc_vaapi -d /dev/dri/renderD128;
else 
  notify-send "Recording ended..."
  pkill --signal SIGINT wf-recorder
fi;
