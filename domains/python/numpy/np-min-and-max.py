import numpy
n, _ = map(int, input().split())
a = numpy.array([input().split() for _ in range(n)], int)
print(numpy.max(numpy.min(a, axis = 1)))