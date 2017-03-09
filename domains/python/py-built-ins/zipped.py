_, X = map(int, input().split())
for e in zip(*[[float(e) for e in input().split()] for _ in range(X)]):
    print('%.1f'%(sum(e)/len(e)))