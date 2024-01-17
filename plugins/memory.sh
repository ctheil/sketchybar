# #!/bin/bash
# Calculate Memory Usage
MEM_INFO=$(vm_stat)
MEM_FREE=$(echo "$MEM_INFO" | grep "Pages free" | awk '{print $3}' | sed 's/\.//')
MEM_ACTIVE=$(echo "$MEM_INFO" | grep "Pages active" | awk '{print $3}' | sed 's/\.//')
MEM_INACTIVE=$(echo "$MEM_INFO" | grep "Pages inactive" | awk '{print $3}' | sed 's/\.//')
MEM_WIRED=$(echo "$MEM_INFO" | grep "Pages wired down" | awk '{print $4}' | sed 's/\.//')
MEM_TOTAL=$(($MEM_FREE + $MEM_ACTIVE + $MEM_INACTIVE + $MEM_WIRED))
MEM_TOTAL_MB=$(echo "$MEM_TOTAL * 4096 / 1000000" | bc)

# Update SketchyBar
MEM_PERCENT=$(echo "$MEM_ACTIVE_MB $MEM_TOTAL_MB" | awk '{printf "%.0f\n", (1 - $1 / $2) * 100}')

# Calculate Memory Usage
MEM_INFO=$(vm_stat | perl -ne '/page size of (\d+)/ and $size=$1; /Pages\s+([^:]+)[^\d]+(\d+)/ and printf("%-16s % 16.2f Mi\n", "$1:", $2 * $size / 1048576);')
MEM_FREE=$(echo "$MEM_INFO" | grep "free" | awk '{printf "%.0f", $2}')
MEM_ACTIVE=$(echo "$MEM_INFO" | grep -w "active" | awk '{printf "%.0f", $2}')
MEM_INACTIVE=$(echo "$MEM_INFO" | grep "inactive" | awk '{printf "%.0f", $2}')
MEM_WIRED=$(echo "$MEM_INFO" | grep "wired down" | awk '{printf "%.0f", $3}')
MEM_SPEC=$(echo "$MEM_INFO" | grep "speculative" | awk '{printf "%.0f", $2}')
MEM_PURG=$(echo "$MEM_INFO" | grep "purgeable" | awk '{printf "%.0f", $2}')

MEM_TOTAL=$(($MEM_FREE + $MEM_ACTIVE + $MEM_INACTIVE + $MEM_WIRED + $MEM_SPEC + $MEM_PURG))
MEM_TOTAL_GB=$(($MEM_TOTAL / 1000))
MEM_ACTIVE_MB=$(($MEM_ACTIVE + $MEM_WIRED))
MEM_ACTIVE_GB=$(($MEM_ACTIVE_MB / 1000))


echo $MEM_TOTAL_GB
echo $MEM_ACTIVE_GB

sketchybar --set $NAME label="$MEM_ACTIVE_GB / $MEM_TOTAL_GB GiB"

