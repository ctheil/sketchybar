#!/bin/bash

sketchybar --add item front_app left \
           --set front_app       background.color=$PURPLE400 \
                                 icon.color=$BCG \
                                 icon.font="sketchybar-app-font:Regular:16.0" \
                                 label.color=$BCG \
                                 script="$PLUGIN_DIR/front_app.sh"            \
           --subscribe front_app front_app_switched
