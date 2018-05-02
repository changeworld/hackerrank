#!/bin/python3

MOD = 1000000007

n = list(map(int, list(input().strip())))
r = 0
k = 0
for _, digit in enumerate(n):
    r += (10 * r + (k + 1) * digit) % MOD
    k = (2 * k + 1) % MOD
print(r % MOD)
