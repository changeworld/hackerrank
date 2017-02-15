import itertools

S, k = input().split()
for e in itertools.combinations_with_replacement(sorted(S), int(k)):
    print(''.join(e))