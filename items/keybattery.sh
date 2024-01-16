#!/bin/bash

sketchybar --add item keybattery right \
           --set keybattery update_freq=120 \
                         script="$PLUGIN_DIR/keybattery.sh" \
           --subscribe keybattery system_woke power_source_change

