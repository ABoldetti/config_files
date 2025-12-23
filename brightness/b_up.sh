#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <bright file>"
    exit 1
fi



FILE="$1"

if [ ! -f $FILE ];then
    echo "file $FILE doesn't exist"
    exit 1
fi

BRIGHTNESS=$(cat $FILE)
if [ "$(echo "$BRIGHTNESS < 1" | bc -l)" -eq 1 ]; then
    BRIGHTNESS=$(echo "scale=2; $BRIGHTNESS-0.05 "| bc -l)
    echo $BRIGHTNESS > $FILE
    xrandr --output DP-2 --brightness $BRIGHTNESS
fi
