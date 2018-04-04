#!/bin/python3

n = int(input())
a = [int(x) for x in input().split()]
b = 0
c = 0

for i in range(n):
    if (a[i] % 2 == 0):
        b = b+1
    else:
        c = c+1

m = ((2**b) * (2**(c-1))-1) % (10**9+7)
n = ((2**b)-1)%(10**9+7)

if c != 0:
    print(m)
else:
    print(n)
