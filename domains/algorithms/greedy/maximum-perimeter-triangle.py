#!/bin/python3

i = int(input()) - 3
a = sorted(int(i) for i in input().split())

while i >= 0 and (a[i] + a[i+1] <= a[i+2]):
    i -= 1
if i >= 0:
    print(a[i], a[i+1], a[i+2])
else:
    print(-1)
