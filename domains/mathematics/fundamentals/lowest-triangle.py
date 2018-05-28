#!/bin/python3
import math


def x(x):
    return math.ceil(2 * x[1] / x[0])


y = [[int(i) for i in input().strip().split(' ')]]
print(int(list(map(x, y))[0]))
