#!/bin/python3

_, l = int(input()), [int(n) for n in input().split()]
while len(l) > 1:
    l[0] += l[1] + l[0] * l[1]
    l.pop(1)
print(l[0] % 1000000007)
