#!/bin/python3

for _ in range(int(input())):
    A, M = (map(int, input().split()))
    if A == 0:
        print('YES')
    elif pow(A, (M - 1) // 2, M) == 1:
        print('YES')
    else:
        print('NO')
