#!/bin/python3

min_x, min_y = 10**6, 10**6
for _ in range(int(input())):
    x, y = map(int,input().split())
    min_x = min(min_x, x)
    min_y = min(min_y, y)
print(min_x * min_y)
