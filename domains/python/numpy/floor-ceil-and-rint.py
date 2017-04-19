import numpy
a = numpy.array([float(i) for i in input().split()])
for i in ['floor', 'ceil', 'rint']:
    print(getattr(numpy, i)(a))