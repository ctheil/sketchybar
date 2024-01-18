#!/bin/bash

sketchybar --add item battery right \
           --set battery update_freq=120 \
                         script="$PLUGIN_DIR/battery.sh" \
                         icon.color=$BCG \
                         label.color=$BCG \
                         background.color=$YELLOW400 \

           --subscribe battery system_woke power_source_change
