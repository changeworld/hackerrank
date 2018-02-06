#!/bin/python3

comb = [[1]*1001 for _ in range(1001)]

for i in range(2, len(comb)):
    for j in range(1, len(comb[i])):
        comb[i][j] = (comb[i][j-1] + comb[i-1][j]) % 1000000000

for _ in range(int(input())):
    n = int(input())
    k = int(input())
    print(comb[n][k])
