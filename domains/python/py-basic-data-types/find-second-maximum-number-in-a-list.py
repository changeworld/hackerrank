input()
print(sorted({int(a) for a in input().split(' ')}, key=lambda a: -a)[1])
