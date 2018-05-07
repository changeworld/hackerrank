#!/bin/python3
from math import ceil

for _ in range(int(input())):
    d, k = map(int, input().split())
    x = ceil(d**.5)
    y = 0
    for i in range(0, x):
        z = (d - i * i)**.5
        if z == int(z):
            y += 4
    if k >= y:
        print('possible')
    else:
        print('impossible')
