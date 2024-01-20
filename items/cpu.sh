#!bin/bash

sketchybar --add item cpu right \
           --set cpu update_freq=2 \
                     icon=􀧓  \
                     script="$PLUGIN_DIR/cpu.sh" \
                     icon.color=$BCG \
                     label.color=$BCG \
                     background.color=$PINK400 \
