import math
import scipy.stats

print('%.4f' % scipy.stats.norm.cdf(
    9800, loc=49 * 205, scale=math.sqrt(49) * 15))
