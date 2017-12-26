#!/bin/python3

import sys

if __name__ == "__main__":
    n = input()
    a = sorted(map(int, input().split()))
    print(min(abs(x-y) for x, y in zip(a, a[1:])))
