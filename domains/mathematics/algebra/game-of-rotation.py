#!/bin/python3

n = int(input())
a = [int(i) for i in input().split()]
o = pmean = sum(i * j for i, j in enumerate(a, 1))
s = sum(a)
for i in a:
    pmean += n * i - s
    o = max(o, pmean)
print(o)
