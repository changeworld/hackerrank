import itertools

S, k = input().split()
for e in itertools.permutations(sorted(S), int(k)):
    print(''.join(e))
