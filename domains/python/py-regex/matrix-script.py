import re

h, w = map(int, input().split())
a = []
for _ in range(h):
    a.append(input()[:w])
s = ''.join(''.join(e) for e in zip(*a))
r = re.sub(r'([a-zA-Z0-9])([^a-zA-Z0-9]+)(?=[a-zA-Z0-9])', r'\1 ', s)
print(r)
