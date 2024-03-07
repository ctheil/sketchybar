#!bin/bash

sketchybar --add item memory right \
	--set memory update_freq=2 \
	icon=􀫦 \
	icon.color=$BCG \
	label.color=$BCG \
	script="$PLUGIN_DIR/memory.sh" \
	background.color=$YELLOW400 \ 
