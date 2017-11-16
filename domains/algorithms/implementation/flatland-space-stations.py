#!/bin/python3

import sys

n,m = input().strip().split(' ')
n,m = int(n), int(m)
c = sorted(int(station) for station in input().split())
maximum = max(c[0], n - c[-1] - 1)
for i in range(1, m):
    d = c[i] - c[i-1]
    maximum = max(d//2, maximum)
print(maximum)
