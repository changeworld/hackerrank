input()
m = set(map(int, input().split()))
input()
n = set(map(int, input().split()))
u = m.symmetric_difference(n)
for x in sorted(u):
    print(x)
