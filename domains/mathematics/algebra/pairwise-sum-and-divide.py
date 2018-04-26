#!/bin/python3

from collections import Counter

for _ in range(int(input())):
    n, a = int(input()), Counter(map(int, input().split()))
    print(a[2] * (a[2] - 1) // 2 + a[1] * (n - 1))
