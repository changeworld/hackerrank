#!/bin/python3

from fractions import Fraction

for _ in range(int(input())):
    n, k = map(int, input().split())
    s = input()
    c = [0]
    for v in s:
        c.append(c[-1] + 1 if v == "1" else c[-1])
    pn = sum(map(lambda i: 0 if s[i] == "0" else c[min(n, i + k + 1)] - c[max(0,  i - k)], range(n)))
    p = Fraction(pn, n**2)
    print("{}/{}".format(p.numerator, p.denominator))
