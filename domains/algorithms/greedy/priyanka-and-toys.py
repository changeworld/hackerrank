#!/bin/python3

_ = input()
w = set(map(int, input().split()))

i = 0
while len(w) > 0:
    i += 1
    m = min(w)
    w = w.difference(set(range(m, m + 5)))
print(i)
