#!/bin/python3

from functools import reduce
mod = 10**9 + 7
_ = input()
print(reduce(lambda a, b: a * b % mod, [1 + pow(2, int(x), mod) for x in input().split()], 1) - 1)
