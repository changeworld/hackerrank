#!/bin/python3

from functools import reduce
mod = 10**9 + 7
_ = input()
a = lambda a, b: a * b % mod
b = [1 + pow(2, int(x), mod) for x in input().split()]
print(reduce(a, b, 1) - 1)
