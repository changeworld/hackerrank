#!/bin/python3

from fractions import Fraction

def preprocessing(n):
    if n.denominator == 1:
        return str(n.numerator) + '/1'
    else:
        return n

for _ in range(int(input())):
    a, b, c = list(map(int, input().split()))
    p, q = max([a, b]), min([a, b])
    if a + b < c:
        result = Fraction(1, 1)
    elif c <= a and c <= b:
        result = Fraction(c**2, 2 * a * b)
    elif q <= c <= p:
        result = Fraction((2 * c - q) * q, 2 * a * b)
    else:
        result = Fraction(1) - Fraction((a + b - c)**2, 2 * a * b)
    print(preprocessing(result))
