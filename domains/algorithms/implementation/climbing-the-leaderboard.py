#!/bin/python3

from bisect import bisect_right

n = int(input().strip())
scores = sorted(set(map(int,input().split())))
m = int(input().strip())
alice = map(int,input().split())
for i in alice:
    print(len(scores)-bisect_right(scores,i)+1)
