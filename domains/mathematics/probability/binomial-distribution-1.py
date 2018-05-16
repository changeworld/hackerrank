#!/bin/python2

def comb(n, r):
    x = 1
    for i in range(r): x = x * (n - i) // (i + 1)
    return x
n = 4
p = 0.8
q = 1 - p
print('%.3f' % sum(comb(n, i) * p**i * q**(n - i) for i in range(3, n + 1)))
print('%.3f' % sum(comb(n, i) * p**i * q**(n - i) for i in range(0, 2)))
