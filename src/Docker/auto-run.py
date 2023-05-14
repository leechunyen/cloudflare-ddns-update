import time
import os

while True:
    os.system('./cloudflare-ddns-update.sh')
    time.sleep(180)