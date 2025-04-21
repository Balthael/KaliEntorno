#!/bin/sh

BATTERY_INFO=$(upower -i $(upower -e | grep BAT))
PERCENTAGE=$(echo "$BATTERY_INFO" | grep -E "percentage" | awk '{print $2}' | tr -d '%')
STATE=$(echo "$BATTERY_INFO" | grep "state" | awk '{print $2}')

if [ "$STATE" = "charging" ]; then
    echo "%{T7}%{F#1bbf3e}⚡%{T-} %{F-}$PERCENTAGE%"
else
    echo "%{T7}%{F#9932CC}%{T-} %{F-}$PERCENTAGE%"
fi


