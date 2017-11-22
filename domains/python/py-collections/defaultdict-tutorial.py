from collections import defaultdict

N, M = map(int, input().split())
d = defaultdict(list)
for i in range(N):
    s = input()
    d[s].append(i + 1)
for _ in range(M):
    s = input()
    if s in d:
        print(' '.join(map(str, d[s])))
    else:
        print('-1')
