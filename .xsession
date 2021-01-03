#!/bin/bash

xrdb -merge ~/.xresources

xrandr --output eDP-1 --mode 1920x1080 --rate 60.00 --scale 1x1 --pos 0x0 --rotate normal --primary

xrandr --output DP-2 --mode 1920x1080 --rate 75.00 --pos 0x-1080 --scale 1x1 &

exec i3
