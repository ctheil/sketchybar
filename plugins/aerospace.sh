#!/usr/bin/env bash

source ../colors.catppuccin.sh

#TERMINAL
sketchybar --set space.F icon="􀪏"
#BROWSER
sketchybar --set space.B icon="􀌌"
#COMMS
sketchybar --set space.C icon="􀌥"
#MUSIC
sketchybar --set space.M icon="􀑪"
# MISC
sketchybar --set space.1 icon=""
sketchybar --set space.2 icon=""

echo color = $BAR_COLOR
if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set $NAME background.drawing=on
else
  sketchybar --set $NAME background.drawing=off
fi
