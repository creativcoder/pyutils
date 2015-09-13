import psutil
import subprocess

BYTES_RECV = psutil.net_io_counters().bytes_recv

subprocess.Popen(['bash','./notify.sh',str(BYTES_RECV/1048576)])
