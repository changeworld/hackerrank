import numpy
n, _ = map(int, input().split())
a = numpy.array([input().split() for _ in range(n)], int)
b = numpy.array([input().split() for _ in range(n)], int)
for i in (a+b, a-b, a*b, a//b, a%b, a**b):
    print(i)