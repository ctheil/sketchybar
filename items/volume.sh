#!bin/bash
#
sketchybar --add item volume right \
  --set volume script="$PLUGIN_DIR/volume.sh" \
  label.color=$SENARY \
  icon.color=$SENARY \
  --subscribe volume volume_change
# background.color=$BLUE400 \
