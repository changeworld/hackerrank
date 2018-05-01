#!/bin/python3

for _ in range(int(input())):
    x = int(input()) * 2
    y = x // 42
    x += (y) * 2
    z = x // 42
    while (y < z):
        x += (z - y) * 2
        y = z
        z = x // 42
    print(x % 1000000007)
