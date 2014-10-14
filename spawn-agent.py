#!/usr/bin/env python
import subprocess
import time
cmd = "/home/ubuntu/updater-interface/NEC-Agent -f"

if __name__ == '__main__':
    while True:
        # XXX: add some logging.
	subprocess.call(cmd.split())
        time.sleep(60)
        # XXX: add some logging.

