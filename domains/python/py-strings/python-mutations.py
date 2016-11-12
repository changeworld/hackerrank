a = input().strip()
b = input().split(' ')
n = int(b[0])
m = n + 1
print(a[:n] + b[1] + a[m:])
