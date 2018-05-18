#!/bin/python2


def comb(n, r):
    x = 1
    for i in range(r):
        x = x * (n - i) // (i + 1)
    return x


n = 10
p = 0.12
q = 1 - p
print('%.3f' % sum(comb(n, i) * p**i * q**(n - i) for i in range(0, 3)))
print('%.3f' % sum(comb(n, i) * p**i * q**(n - i) for i in range(2, n + 1)))
