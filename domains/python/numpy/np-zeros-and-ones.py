import numpy
a = [int(i) for i in input().split()]
print(numpy.zeros(tuple(a), dtype = numpy.int))
print(numpy.ones(tuple(a), dtype = numpy.int))