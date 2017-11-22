import scipy.stats

print('%.2f' % (100.0 * scipy.stats.norm.sf(80, loc=70, scale=10)))
print('%.2f' % (100.0 * scipy.stats.norm.sf(60, loc=70, scale=10)))
print('%.2f' % (100.0 * scipy.stats.norm.cdf(60, loc=70, scale=10)))
