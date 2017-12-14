#!/bin/python2

import sys
if sys.version_info[0] >= 3:
    raw_input = input

raw_input()
nums = map(int, raw_input().split())
print(all(e > 0 for e in nums) and any(str(e) == str(e)[::-1] for e in nums))
