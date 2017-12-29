#!/bin/python3

for _ in range(int(input())):
    a = [sorted(input()) for i in range(int(input()))]
    res = 'YES'
    for e in map(list, zip(*a)):
        if e != sorted(e):
            res = 'NO'
            break
    print(res)
