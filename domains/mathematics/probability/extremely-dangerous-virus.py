#!/bin/python3

a, b, t = map(int, input().split())
print(pow(int(((a + b) / 2)), t, 1000000007))
