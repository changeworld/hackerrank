#!/bin/python3
from math import factorial

for _ in range(int(input())):
    a,b = map(int, input().split())
    print((factorial(a+b-1)//(factorial(a)*factorial(b-1)))%1000000007)
