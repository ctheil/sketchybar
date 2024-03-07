#!/bin/bash

sketchybar --add item media center --set media label.color=$PINK400 \
	label.max_chars=20 \
	icon.padding_left=0 \
	scroll_texts=on \
	icon=􀑪 \
	icon.color=$PINK100 \
	icon.padding_left=10 \
	script="$PLUGIN_DIR/media.sh" \
	--subscribe media media_change \
	background.drawing=off
