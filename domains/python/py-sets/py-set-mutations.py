input()
s = set(map(int, input().split()))
for _ in range(int(input())):
    a = input().split()
    getattr(s, a[0])(set(map(int, input().split())))
print(sum(s))