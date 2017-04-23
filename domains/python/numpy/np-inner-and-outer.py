import numpy
a = [int(i) for i in input().split()]
b = [int(i) for i in input().split()]
print(numpy.inner(a, b))
print(numpy.outer(a, b))