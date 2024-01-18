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
MEM_FREE_MB=$(($MEM_TOTAL - $MEM_ACTIVE_MB))

echo $MEM_ACTIVE_MB
echo $MEM_TOTAL
echo $MEM_FREE_MB

