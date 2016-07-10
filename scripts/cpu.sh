X=$(vmstat|tail -1|awk '{print $15}')
echo "$((100 - X))%"
