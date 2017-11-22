h = {}

for i in range(int(input())):
    s = input().rstrip()
    if s not in h:
        h[s] = [i, 0]
    h[s][1] += 1
print(len(h))
print(' '.join(str(e[1]) for e in sorted(h.values())))
