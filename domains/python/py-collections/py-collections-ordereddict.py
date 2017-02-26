from collections import OrderedDict

d = OrderedDict()
for _ in range(int(input())):
    n = input().split()
    p = int(n.pop())
    n = ' '.join(n)
    if n not in d:
        d[n] = 0
    d[n] += p
for n in d:
    print(n+' '+str(d[n]))