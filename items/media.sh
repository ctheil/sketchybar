#!/bin/bash

sketchybar --add item media right \
  --set media label.color=$SECONDARY \
  label.max_chars=20 \
  icon.padding_left=0 \
  icon=􀑪 \
  scroll_texts=on \
  icon.color=$SECONDARY \
  background.drawing=off \
  script="$PLUGIN_DIR/media.sh" \
  --subscribe media media_change
