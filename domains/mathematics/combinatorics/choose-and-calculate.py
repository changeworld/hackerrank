#!/bin/python3

MOD = 1000000007
n, k = list(map(int, input().split()))
x = sorted(map(int, input().split()))
choose = 1
total = 0
for i in range(n - k + 1):
    total += choose * (x[k + i - 1] - x[n - k - i]) % MOD
    choose = choose * (k + i) * pow(i + 1, MOD - 2, MOD) % MOD
print(total % MOD)
