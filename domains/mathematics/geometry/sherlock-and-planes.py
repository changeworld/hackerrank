#!/bin/python3

for _ in range(int(input())):
    x, y, z = [], [], []
    for _ in range(4):
        a, b, c = map(int, input().split())
        x.append(a)
        y.append(b)
        z.append(c)
    x.sort()
    y.sort()
    z.sort()
    print(["NO", "YES"][x[3] - x[0] == 0 or y[3] - y[0] == 0 or
                        z[3] - z[0] == 0])
