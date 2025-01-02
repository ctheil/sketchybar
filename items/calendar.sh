#!/bin/bash

sketchybar --add item calendar right \
  --set calendar icon=􀧞 \
  icon.color=$PRIMARY \
  label.color=$PRIMARY \
  update_freq=30 \
  script="$PLUGIN_DIR/calendar.sh"
# background.color=$GREEN400 \
