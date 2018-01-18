#!/bin/python3
import math

L, S1, S2 = map(int, input().split())
for _ in range(int(input())):
    print(abs((math.sqrt(2 * int(input())) - math.sqrt(2 * L * L)) / (S1 - S2)))
