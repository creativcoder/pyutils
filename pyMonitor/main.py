import psutil
import subprocess

BYTES_RECV = psutil.net_io_counters(pernic=True).get('wlan0').bytes_recv/float(1024)/1024

subprocess.Popen(['bash','./notify.sh',str(BYTES_RECV])
