import itertools
print(*[(len(list(c)), int(k)) for k, c in itertools.groupby(input())])