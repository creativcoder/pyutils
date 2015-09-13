IN_MB=(1024*1024)
cat /proc/net/dev | grep "wlan" | awk '{print $2/IN_MB}' 
