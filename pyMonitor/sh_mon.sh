IN_MB=(1024*1024)
INFO=cat /proc/net/dev | grep "wlan" | awk '{print $2/IN_MB}'
notify-send -h int:y:10 -u normal -t 10000 "Total Bytes Received ${INFO}"
