#!/bin/sh

PERCENTAGE=$(ioreg -r -l -k "BatteryPercent" | grep -i '"BatteryPercent" =' | sed -E 's/.*"BatteryPercent" = ([0-9]+).*/\1/')

if [ $PERCENTAGE = "" ]; then
  exit 0
fi

case ${PERCENTAGE} in
  9[0-9]|100) ICON="􀺰 􀛨"
  ;;
  [6-8][0-9]) ICON="􀺰 􀺸"
  ;;
  [3-5][0-9]) ICON="􀺰 􀺶"
  ;;
  [1-2][0-9]) ICON="􀺰 􀛩"
  ;;
  *) ICON="􀺰 􀛪"
esac

# The item invoking this script (name $NAME) will get its icon and label
# updated with the current battery status
sketchybar --set $NAME icon="$ICON" label="${PERCENTAGE}%"
