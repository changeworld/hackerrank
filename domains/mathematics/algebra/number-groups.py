#!/bin/python3

k = int(input().strip())
s = 0
for i in range(k * (k - 1) + 1, k * (k + 1), 2):
    s += i
print(s)
