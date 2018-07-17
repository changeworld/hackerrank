#!/bin/python3


def square(ar, ai, br, bi, m):
    return ((ar * br) % m - (ai * bi) % m) % m, (
        (ar * bi) % m + (ai * br) % m) % m


def calc(a, b, p, m):
    resr = 1
    resi = 0
    while p > 0:
        if p % 2 == 1:
            resr, resi = square(resr, resi, a, b, m)
        a, b = square(a, b, a, b, m)
        p = p // 2
    return resr, resi


for _ in range(int(input())):
    a, b, k, m = map(int, input().split(' '))
    ansr, ansi = calc(a, b, k, m)
    print('{0} {1}'.format(ansr, ansi))
