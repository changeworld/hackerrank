import numpy
n, _ = map(int, input().split())
a = numpy.array([input().split() for _ in range(n)], int)
print(numpy.mean(a, axis = 1))
print(numpy.var(a, axis = 0))
print(numpy.std(a, axis = None))