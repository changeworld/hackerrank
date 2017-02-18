from collections import namedtuple

N = int(input())
columns = namedtuple('columns', input().split())
arr = [columns(*input().split()) for _ in range(N)]
print(sum(float(e.MARKS) for e in arr)/N)