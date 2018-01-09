#!/bin/python3

import math

print(int(list(map(lambda x: math.ceil(2*x[1]/x[0]), [[int(i) for i in input().strip().split(' ')]]))[0]))