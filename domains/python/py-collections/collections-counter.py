import collections

input()
shoes = collections.Counter(map(int, input().split()))
rtn = 0
N = int(input())
for e in range(N):
    s,p = map(int, input().split())
    if shoes[s] > 0:
        shoes[s] -= 1
        rtn += p
print(rtn)