import re

S = input()
k = input()
a = [i for i in range(len(S) - len(k) + 1) if S[i:i+len(k)] == k]
if a:
    for e in a: print((e, e + len(k) - 1))
else: print((-1, -1))