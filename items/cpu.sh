#!bin/bash

sketchybar --add item cpu right \
  --set cpu update_freq=2 \
  icon=􀧓 \
  script="$PLUGIN_DIR/cpu.sh" \
  icon.color=$QUINARY \
  label.color=$QUINARY
# background.color=$PINK400 \
