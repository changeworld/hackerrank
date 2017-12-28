#!/bin/python3

if __name__ == "__main__":
    n = input()
    a = sorted(map(int, input().split()))
    print(min(abs(x - y) for x, y in zip(a, a[1:])))
