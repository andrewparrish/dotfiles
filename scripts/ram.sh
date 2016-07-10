X=$(free -m | grep 'Mem' | awk '{print$2}')
Y=$(free -m | grep 'Mem' | awk '{print$3}')
Z=$Y*1.0/$X
echo $(("$Y * 1.0 / $X"))
