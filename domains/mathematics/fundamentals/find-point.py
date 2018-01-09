#!/bin/python3

for _ in range(int(input())):
    x1, y1, x2, y2 = (map(int, input().split()))
    print(x1 + (x2 - x1) * 2, y1 + (y2 - y1) * 2)
