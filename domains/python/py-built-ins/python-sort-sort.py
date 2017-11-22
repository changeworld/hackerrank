N, M = map(int, input().split())
a = [[int(e) for e in input().split()] for _ in range(N)]
K = int(input())
for e in sorted(a, key=lambda e: e[K]):
    print(' '.join(map(str, e)))
