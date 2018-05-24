#!/bin/python3

from functools import reduce


def a(a, b):
    return a * b % mod


mod = 10**9 + 7
_ = input()
b = [1 + pow(2, int(x), mod) for x in input().split()]
print(reduce(a, b, 1) - 1)
