import math, scipy.stats

print('%.4f' % scipy.stats.norm.cdf(250, loc=2.4*100, scale=2.0*math.sqrt(100)))