#!/bin/python3

division = 1000000007


def fact(n):
    r = 1
    while n >= 2:
        r = ((r) * (n % division)) % division
        n -= 1
    return r


def factr(base, exp, modulo):
    base %= modulo
    r = 1
    while exp > 0:
        if exp & 1:
            r = (r * base) % modulo
        base = (base * base) % modulo
        exp >>= 1
    return r


def combinations(n, m):
    a = fact(n + m - 2)
    b = fact(n - 1) * fact(m - 1)
    return ((a % division) * (factr(b, (division - 2), division))) % division


for _ in range(int(input())):
    n, m = map(int, input().split())
    print(combinations(n, m))
