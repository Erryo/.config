#!/bin/bash

selected=$(echo "Shutdown
Restart 
Suspend" | rofi -dmenu -p "Power Options")

if [ -z "$selected" ]; then
    echo "No option selected. Exiting."
    exit 1
fi

if [ "$selected" == "Shutdown" ]; then
    systemctl poweroff -i
    echo "System is shutting down."
elif [ "$selected" == "Restart" ]; then
    reboot -i
    echo "System is restarting."
elif [ "$selected" == "Suspend" ]; then
    systemctl suspend -i
    /home/infy/.config/awesome/default_lock.sh
    echo "System is suspending."
else
    echo "Invalid option: $selected"
fi
