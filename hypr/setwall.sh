#!/bin/bash

# Declare an array with the given strings
my_array=("aurora" "beach" "bitday" "chihuahuan" "cliffs" "colony" "desert" "earth" "exodus" "factory" "firewatch" "forest" "gradient" "home" "island" "lake" "lakeside" "market" "mojave" "moon" "mountains" "room" "sahara" "street" "tokyo" "home" "chihuahuan" "aurora" "moon" "exodus" "desert")

# Get the date
current_date=$(date +"%d")
current_month=$(date +"%m")
echo "Current month: $current_month"
echo "Current date: $current_date"

# Determine the theme of the day
if [ $((current_month + current_date)) -lt 31 ]; then
	index=$((current_date + current_month))
	day_theme=${my_array[index]}
else
	out_of=$((current_month + current_date - 31))
	day_theme=${my_array[out_of]}
fi
echo $day_theme >/home/infy/.config/hypr/ThemeOfDat.txt
