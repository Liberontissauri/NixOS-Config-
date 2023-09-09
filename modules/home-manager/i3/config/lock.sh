#!/usr/bin/env bash

icon="./icon.png"
tmpbg="./screen.png"

#(( $# )) && { icon=$1; }

scrot "$tmpbg"
#convert "$tmpbg"  -scale 1000 "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -i "$tmpbg"
rm ./screen.png
