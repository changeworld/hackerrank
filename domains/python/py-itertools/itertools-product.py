import itertools

A = list(map(int, input().split()))
B = list(map(int, input().split()))
print(' '.join(str(e) for e in itertools.product(A, B)))