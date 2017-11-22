import itertools

S, k = input().split()
for i in range(1, int(k) + 1):
    for e in itertools.combinations(sorted(S), i):
        print(''.join(e))
