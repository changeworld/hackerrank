#!/bin/python3

from itertools import accumulate

for _ in range(int(input())):
    k, n = list(map(int, input().split()))
    x = list(accumulate(pow(i, n, 100) for i in range(100)))
    print('%02d' % (((k // 100) * x[-1] + x[k % 100]) % 100))
