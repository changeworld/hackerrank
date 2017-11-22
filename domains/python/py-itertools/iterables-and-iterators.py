import itertools

input()
a = input().split()
k = int(input())
n = 0
m = 0
for e in itertools.permutations(a, k):
    m += 1
    n += 'a' in e[:k]
print(n * 1.0 / m)
