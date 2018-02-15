#!/bin/python3
import collections

a = []
for _ in range(int(input())):
    m, d = [int(temp) for temp in input().split()]
    if d // 10 >= m or d % 10 >= m:
        pass
    else:
        a.append((d // 10) * m + d % 10)
ans = 0
for i in collections.Counter(a).items():
    ans += i[1] * (i[1] - 1) // 2
print(ans)
