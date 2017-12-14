#!/bin/python2

import sys
if sys.version_info[0] >= 3:
    raw_input = input

x, k = map(int, raw_input().split())
print(input() == k)
