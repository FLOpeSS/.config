#!/bin/bash

battery_info=$(acpi -b)
battery_status=$(echo "$battery_info" | grep -Po '([A-Za-z]+),')
battery_percentage=$(echo "$battery_info" | grep -Po '[0-9]+(?=%)')

if [[ -z $battery_info ]]; then
    echo "%{F#999}${unknown-label}"
elif [[ $battery_status == "Charging," ]]; then
    echo "%{F#FF0}${charging-label}"
elif [[ $battery_status == "Discharging," ]]; then
    if ((battery_percentage <= 20)); then
        echo "%{F#FF0000}${low-label}"
    else
        echo "%{F#FFF}${discharging-label}"
    fi
elif [[ $battery_status == "Full," ]]; then
    echo "%{F#FFF}${charged-label}"
else
    echo "%{F#999}${unknown-label}"
fi
echo "%{F#FFF}$battery_percentage"

