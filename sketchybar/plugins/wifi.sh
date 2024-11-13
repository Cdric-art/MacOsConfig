#!/usr/bin/env sh

LABEL="$(system_profiler SPAirPortDataType | awk '/Current Network/ {getline;$1=$1;print $0 | "tr -d ':'";exit}')"

if [[ "$LABEL" == *"You are not associated with an AirPort network."* ]]; then
   sketchybar --set wifi label="Disconnected"
else   LABEL=$(echo "$LABEL" | sed "s/Current Wi-Fi Network: //")
   sketchybar --set wifi label="$LABEL"
fi
