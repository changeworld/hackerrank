from sklearn.linear_model import LinearRegression

lr = LinearRegression()
lr.fit(list(map(lambda e:[e], [95,85,80,70,60])), [85,95,70,65,70])
print('%.3f'%lr.predict(80))