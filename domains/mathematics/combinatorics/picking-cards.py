#!/bin/python3


def calc(cards):
    l = len(cards)
    r = 1
    for i, c in enumerate(cards):
        v = l - c
        if v <= 0:
            return 0
        r *= (v - i)
    return r % 1000000007


for _ in range(int(input())):
    _ = input()
    cards = list(map(int, input().strip().split()))
    cards.sort(reverse=True)
    print(calc(cards))
