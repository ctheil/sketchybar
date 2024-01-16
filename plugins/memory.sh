#!/bin/bash

# Calculate Memory Usage
MEM_INFO=$(vm_stat)
MEM_FREE=$(echo "$MEM_INFO" | grep "Pages free" | awk '{print $3}' | sed 's/\.//')
MEM_ACTIVE=$(echo "$MEM_INFO" | grep "Pages active" | awk '{print $3}' | sed 's/\.//')
MEM_TOTAL=$(($MEM_FREE + $MEM_ACTIVE))

MEM_PERCENT=$(echo "$MEM_FREE $MEM_TOTAL" | awk '{printf "%.0f\n", (1 - $1 / $2) * 100}')

# Update SketchyBar
sketchybar --set $NAME label="$MEM_PERCENT%"


