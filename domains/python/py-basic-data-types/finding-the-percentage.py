from functools import reduce

h = {}
n = int(input())
for i in range(n):
  a = input().split(' ')
  h[a[0]] = reduce(lambda x, y:x+y, [float(d) for d in a[1:]])
print('%.2f'%(h[input().rstrip()]/3))