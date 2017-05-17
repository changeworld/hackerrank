import math, scipy.stats

A, B = scipy.stats.norm.interval(0.95, loc=500, scale=80/math.sqrt(100))
print(A)
print(B)