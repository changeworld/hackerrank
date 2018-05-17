#!/bin/python2


def comb(n, r):
    x = 1
    for i in range(r):
        x = x * (n - i) // (i + 1)
    return x


n = 6
p = 1.09 / 2.09
q = 1 - p
print('%.3f' % sum(comb(n, i) * p**i * q**(n - i) for i in range(3, n + 1)))
