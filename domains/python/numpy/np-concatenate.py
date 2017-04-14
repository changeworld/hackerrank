import numpy
n, m, _ = map(int, input().split())
a = numpy.array([input().split() for _ in range(n+m)], int)
print(numpy.array(a))