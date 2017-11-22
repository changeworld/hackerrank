import numpy
n, _ = map(int, input().split())
a = numpy.array([input().split() for _ in range(n)], int)
print(numpy.transpose(a))
print(a.flatten())
