import numpy
p = [float(i) for i in input().split()]
print(numpy.polyval(p, float(input())))