#!/bin/python3
from math import factorial

x = 1000000007

for _ in range(int(input())):
    a, b = map(int, input().split())
    print((factorial(a + b - 1) // (factorial(a) * factorial(b - 1))) % x)
