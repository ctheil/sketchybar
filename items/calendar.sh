#!/bin/bash

sketchybar --add item calendar right \
           --set calendar icon=􀧞  \
                          icon.color=$BCG \
                          label.color=$BCG \
                          background.color=$GREEN400 \
                          update_freq=30 \
                          script="$PLUGIN_DIR/calendar.sh"

