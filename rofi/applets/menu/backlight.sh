#!/usr/bin/env bash

## Author  : Aditya Shakya
## Mail    : adi1090x@gmail.com
## Github  : @adi1090x
## Twitter : @adi1090x
style="$($HOME/.config/rofi/applets/menu/style.sh)"

dir="$HOME/.config/rofi/applets/menu/configs/$style"
rofi_command="rofi -theme $dir/backlight.rasi"

# Error msg
msg() {
	rofi -theme "$HOME/.config/rofi/applets/styles/message.rasi" -e "$1"
}
## Get Brightness
	bness="$(brillo -G)"
  BNESS=${bness%.*}
	PERC="$(($BNESS*100/255))"
	BRILLO=${bness%.*}
echo $BNESS
if [[ $BRILLO -ge 1 ]] && [[ $BRILLO -le 29 ]]; then
    MSG="Low"
elif [[ $BRILLO -ge 30 ]] && [[ $BRILLO -le 49 ]]; then
    MSG="Optimal"
elif [[ $BRILLO -ge 50 ]] && [[ $BRILLO -le 69 ]]; then
    MSG="High"
elif [[ $BRILLO -ge 70 ]] && [[ $BRILLO -le 100 ]]; then
    MSG="Too Much"
fi

## Icons
ICON_UP="U"
ICON_DOWN="D"
ICON_OPT="O"

notify="notify-send -u low -t 15"
## Main
chosen="$(echo -e "$options" | $rofi_command -p "$BRILLO%  :  $MSG" -dmenu)"
#case $chosen in
#    "$ICON_UP")
#		if [[ -f /bin/brightnessctl ]]; then
#			brightnessctl -q set +10% && $notify "Brightness Up $ICON_UP"
#		elif [[ -f /usr/bin/blight ]]; then
#			blight -d "$DEVICE" set +10% && $notify "Brightness Up $ICON_UP"
#		elif [[ -f /usr/bin/xbacklight ]]; then
#			xbacklight -inc 10 && $notify "Brightness Up $ICON_UP"
#		fi
#        ;;
#    "$ICON_DOWN")
#		if [[ -f /bin/brightnessctl ]]; then
#			brightnessctl -q set 10%- && $notify "Brightness Down $ICON_DOWN"
#		elif [[ -f /usr/bin/blight ]]; then
#			blight -d "$DEVICE" set -10% && $notify "Brightness Down $ICON_DOWN"
#		elif [[ -f /usr/bin/xbacklight ]]; then
#			xbacklight -dec 10 && $notify "Brightness Down $ICON_DOWN"
#		fi
#        ;;
#    "$ICON_OPT")
#		if [[ -f /bin/brightnessctl ]]; then
#			brightnessctl -q set 25% && $notify "Optimal Brightness $ICON_OPT"
#		elif [[ -f /usr/bin/blight ]]; then
#			blight -d "$DEVICE" set 25% && $notify "Optimal Brightness $ICON_OPT"
#		elif [[ -f /usr/bin/xbacklight ]]; then
#			xbacklight -set 30 && $notify "Optimal Brightness $ICON_OPT"
#		fi
#        ;;
#esac
#
