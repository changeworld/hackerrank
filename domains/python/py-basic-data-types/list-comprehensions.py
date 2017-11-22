x = int(input()) + 1
y = int(input()) + 1
z = int(input()) + 1
n = int(input())
print([[a, b, c] for a in range(x) for b in range(y)
       for c in range(z) if sum([a, b, c]) != n])
