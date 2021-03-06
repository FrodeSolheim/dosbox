#!/usr/bin/env python3
# This file is automatically generated by fs-package

import os
import sys

if len(sys.argv) > 4:
    max = int(sys.argv[4])
else:
    max = 999
stat = os.stat(sys.argv[1])
with open(sys.argv[1], "rb") as f:
    data = f.read().decode("UTF-8")
data = data.replace(sys.argv[2], sys.argv[3], max)
with open(sys.argv[1], "wb") as f:
    f.write(data.encode("UTF-8"))
os.utime(sys.argv[1], (stat.st_atime, stat.st_mtime))
