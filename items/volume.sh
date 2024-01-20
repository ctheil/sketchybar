#!bin/bash
#
sketchybar --add item volume right \
           --set volume script="$PLUGIN_DIR/volume.sh" \
                        label.color=$BCG \
                        icon.color=$BCG \
                        background.color=$BLUE400 \
           --subscribe volume volume_change \
