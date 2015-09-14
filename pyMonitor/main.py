import psutil
import subprocess

BYTES_RECV = psutil.net_io_counters(pernic=True).get('wlan0').bytes_recv/float(1024)/1024

#cmd = """sudo cat /proc/net/dev | grep "wlan" | awk '{print $2}'"""

a=subprocess.Popen(['bash','./notify.sh',str(round(BYTES_RECV,2))])
