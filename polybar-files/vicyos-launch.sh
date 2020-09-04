#!/usr/bin/env sh

###########################
#### MY PERSONAL CONFIG ###
###########################

# FIRST THING FIRST: INSTALL ARANDR!


#/home/vicyos/.config/bspwm/autostart.sh

#Place it before polybar starts!!!!
#xrandr --output LVDS1 --primary --mode 1366x768 --pos 271x0 --rotate normal --output DP1 --off --output DP2 --off --output DP3 --off --output HDMI1 --mode 1920x1080 --pos 1637x0 --rotate normal --output HDMI2 --off --output HDMI3 --off --output VGA1 --off --output VIRTUAL1 --off
------------------------------------------------

#/home/vicyos/.config/bspwm/bspwmrc

#bspc monitor LVDS1 -d 1 2 3 4 5
#bspc monitor HDMI1 -d 6 7 8 9 10
------------------------------------------------

#/home/vicyos/.config/bspwm/autostart.sh


#Vicyos Polybar script 

#Place it below xrandr command
#$HOME/.config/polybar/vicyos-launch.sh &




##############################






## Add this to your wm startup file.
# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar --reload -c ~/.config/polybar/config1.ini main1 &
polybar --reload -c ~/.config/polybar/config2.ini main2 &
