# cat /proc/net/dev | grep "wlan" | awk '{print $2}'
notify-send -h int:y:10 -u normal -t 100 "Total Bytes Received $1 MB"
