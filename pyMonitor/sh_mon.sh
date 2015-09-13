cat /proc/net/dev | grep "wlan" | awk '{print $2/(1024*1024)}' 
