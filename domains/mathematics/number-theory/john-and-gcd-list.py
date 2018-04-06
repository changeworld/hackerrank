#!/bin/python3

def gcd(a, b):
    while b != 0:
        a, b = b, a % b
    return a

def lcm(x):
    return x[0] * x[1] // gcd(x[0], x[1])

def calc(a):
    return list(map(lambda x: lcm(x), list(zip(a + [1], [1] + a))))

for _ in range(int(input())):
    _ = input()
    a = list(map(int, input().strip().split()))
    print(' '.join(list(map(str, calc(a)))))
