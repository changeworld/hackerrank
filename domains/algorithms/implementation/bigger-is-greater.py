import itertools

def prev_permutation(s):
    return compute_permutations(s, lambda x, y: x >= y)

def next_permutation(s):
    return compute_permutations(s, lambda x, y: x <= y)

def compute_permutations(s, comparator):
    n = len(s)
    i = n - 1
    while i > 0 and comparator(s[i], s[i - 1]):
        i -= 1
    if i <= 0:
        return False
    j = n - 1
    while comparator(s[j], s[i - 1]):
        j -= 1
    s[i - 1], s[j] = s[j], s[i - 1]
    s[i : ]  = s[n - 1: i - 1 : -1]
    return True

for _ in range(int(input())):
    w = list(input())
    if next_permutation(w):
        print(''.join(w))
    else:
        print('no answer')